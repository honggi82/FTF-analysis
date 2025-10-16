# F-value time-frequency (FTF) analysis

![F-value time-frequency (FTF) analysis](FTF_analysis.JPG)
This repository provides the MATLAB code for the F-value time-frequency (FTF) analysis method proposed in the paper "F-value time-frequency (FTF) analysis: between-within variance analysis."

## Algorithm: F-value Time-Frequency (FTF) Analysis

FTF analysis is a novel technique that visualizes statistical significance on a time-frequency map by applying the F-value from an Analysis of Variance (ANOVA). It is designed to identify and quantify differences between multiple conditions in time-series data, such as electroencephalography (EEG).

### Key Features & Methodology
* **Statistical Visualization**: Unlike traditional time-frequency plots that only show power or amplitude, the FTF plot directly visualizes the F-value at each time-frequency point. This allows researchers to immediately identify where the most significant differences between experimental conditions lie.
* **Variance Analysis**: The core of the method is to compute the ratio of between-condition variance to within-condition variance. A high F-value indicates that the variation between the conditions is significantly larger than the variation within each condition, suggesting a true effect.
* **Intuitive Interpretation**: The resulting FTF map highlights the specific time points and frequency bands where the signals diverge significantly across conditions. This provides an intuitive and powerful tool for analyzing complex neural signals, such as those from motor imagery tasks, without the need for post-hoc statistical tests on the power maps themselves.

The MATLAB code in this repository includes the functions and example scripts necessary to perform the FTF analysis on your own time-series data.

## Citation

If you use this code for your research, please cite the following paper:

* Yeom, H. G. (2021). F-value time-frequency (FTF) analysis: between-within variance analysis. *Frontiers in Neuroscience*, 15, 729449.
    (https://doi.org/10.3389/fnins.2021.729449)

## Usage

For detailed instructions, please refer to the MATLAB scripts and documentation within this repository.
https://doi.org/10.3389/fnins.2021.729449
