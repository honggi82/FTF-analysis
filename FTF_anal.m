% F-value time-frequency analysis
% 'F' is F-values of data. 
% 'F' will be a 3D shape (channels * time * frequency)
% 'TF' is time-frequency spectra of data. 
% 'TF' will be a 5D shape (channels * time * frequency * trials * events)
% 'data' should be a 4D shape (channels * time * trials * events)
% 'sf' is a sampling rate
% 'wnd_size' is a window size of data
% 'baseline' is a period for baseline correction of analysis
% 'f_scale' is a freqeuncy resolution of analysis
% 'freq_band' is a frequency band of analysis
% Set 'normal' to 1 if you want to normalize the spectrum values depending on baseline
% Set 'fig' to 1 if you want to plot FTF analysis results
% When you draw a analysis result, you can control the sensitivity by adjusting caxis([0 5]) value
% To use the FTF function, you should set path the folder that contains 'timefreq_anal' function
%
% Copyright Hong Gi Yeom
% You can use this code for academic purpose
% If you use the FTF function in your research, please cite the following paper:
% Hong Gi Yeom, F-value time-frequency (FTF) analysis: between-within variance analysis, 2021
% 
% Examples:
%
%  sf = 1000
%  wnd_size = [-1 3]
%  baseline = [-1 0]
%  f_scale = 1
%  freq_band = [1 100]
%  normal = 1
%  fig = 1
%  [F TF] = FTF_anal(data, sf, wnd_size, baseline,f_scale, freq_band, normal, fig)

function [F TF] = FTF_anal(data, sf, wnd_size, baseline,f_scale, freq_band, normal, fig)

if nargin<5
    f_scale=1;
    freq_band = [1, 100];
    normal=0;
    fig=0;
elseif nargin<6
    freq_band = [1, 100];
    normal=0;
    fig=0;
elseif nargin<7
    normal=0;    
    fig=0;
elseif nargin<8  
    fig=0;
end
sz = size(data); % data size

%====================== time-frequency ====================== 
TF=zeros(sz(1), ceil(freq_band(2)-freq_band(1)/f_scale), sz(2), sz(3), sz(4));
for ch=1:sz(1)
    for j=1:sz(3)
        for i=1:sz(4)
            TF(ch,:,:,j,i) = timefreq_anal(data(ch,:,j,i), sf, wnd_size, baseline,f_scale,freq_band, normal);
        end
    end
    fprintf(['Calculation of BW on channel ', num2str(ch), ' is finished\n']);
end
clear data

%================= FTF analysis (Between-Within Variance) ================= 
ni = sz(3); % # of trials of i-th group
K = sz(4); % # of group
N = K*ni; % # of total trials
B = zeros(sz(1), ceil(freq_band(2)-freq_band(1)/f_scale), sz(2), sz(3), sz(4));
W = zeros(sz(1), ceil(freq_band(2)-freq_band(1)/f_scale), sz(2), sz(3), sz(4));
B = squeeze(var(mean(TF, 4), 0, 5))/(K-1); % Between variance
W = squeeze(mean(var(TF, 0, 4),5))/(N-K); % Within variance % modified on 16 Sep 2021
F=B./W; % F-value

% plotting FTF analysis
if fig==1
    t=linspace(wnd_size(1),wnd_size(2),size(F,3));
    fr=linspace(freq_band(1), freq_band(2),size(F,2));
    
    fullscreen=get(0,'ScreenSize'); 
    figure('Position',[0 0 fullscreen(3) fullscreen(4)]);
    for ch=1:sz(1)
        subplot(ceil(ch_n/10), 10, ch);
        pcolor(t,fr,squeeze(F(ch,:,:))); colormap(parula)
        shading 'interp'; caxis([0 5]); title(['Channel: ', num2str(ch)]);
        x1=[0 0]; y1=freq_band; line(x1,y1,'Color','red', 'LineWidth', 1); % line for Onset time
    end

    set(gcf,'Color','w');
end

% You can use the following function instead of a separate file.
function TF = timefreq_anal(data, sf, wnd_size, baseline,f_scale, freq_band, normal)

wname = 'cmor2.48-1';

if nargin<5
    f_scale=1;
    freq_band = [1, 100];
    normal=0;
elseif nargin<6
    freq_band = [1, 100];
    normal=0;
elseif nargin<7
    normal=0;    
end
target_f = freq_band(1):f_scale:freq_band(2); 

timefreq=abs(cwt(data, sf./target_f, wname));
start_bs=ceil((baseline(1)-wnd_size(1))*sf)+1;
end_bs=ceil((baseline(2)-wnd_size(1))*sf);
base=timefreq(:,start_bs:end_bs);
bs=mean(base,2);
bs_std=std(base');

if normal==1
    TF=(timefreq-repmat(bs,1,size(timefreq,2)))./repmat(bs_std',1,size(timefreq,2));
else
    TF=timefreq-repmat(bs,1,size(timefreq,2));
end 
