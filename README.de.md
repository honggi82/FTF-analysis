# F-Wert-Zeit-Frequenz-Analyse (FTF).
![F-value time-frequency (FTF) analysis](FTF_analysis.JPG)

<div align="center">
  <a href="README.md">English</a> |
  <a href="README.de.md"><strong>Deutsch</strong></a> |
  <a href="README.es.md">Español</a> |
  <a href="README.fr.md">français</a> |
  <a href="README.ja.md">日本語</a> |
  <a href="README.ko.md">한국어</a> |
  <a href="README.pt.md">Português</a> |
  <a href="README.ru.md">Русский</a> |
  <a href="README.zh.md">中文</a>
</div>

Dieses Repository stellt den MATLAB-Code für die F-Wert-Zeit-Frequenz-Analyse (FTF) bereit, die im Artikel „F-Wert-Zeit-Frequenz-Analyse (FTF): Between-within-Varianzanalyse“ vorgeschlagen wird.

## Algorithmus: F-Wert-Zeit-Frequenz-Analyse (FTF).

Die FTF-Analyse ist eine neuartige Technik, die die statistische Signifikanz auf einer Zeit-Frequenz-Karte visualisiert, indem sie den F-Wert aus einer Varianzanalyse (ANOVA) anwendet. Es dient dazu, Unterschiede zwischen mehreren Erkrankungen in Zeitreihendaten wie der Elektroenzephalographie (EEG) zu identifizieren und zu quantifizieren.

### Hauptmerkmale und Methodik
* **Statistische Visualisierung**: Im Gegensatz zu herkömmlichen Zeit-Frequenz-Diagrammen, die nur Leistung oder Amplitude anzeigen, visualisiert das FTF-Diagramm direkt den F-Wert an jedem Zeit-Frequenz-Punkt. Dadurch können Forscher sofort erkennen, wo die größten Unterschiede zwischen den Versuchsbedingungen liegen.
* **Varianzanalyse**: Der Kern der Methode besteht darin, das Verhältnis der Varianz zwischen Bedingungen zur Varianz innerhalb von Bedingungen zu berechnen. Ein hoher F-Wert zeigt an, dass die Variation zwischen den Bedingungen deutlich größer ist als die Variation innerhalb jeder Bedingung, was auf einen echten Effekt schließen lässt.
* **Intuitive Interpretation**: Die resultierende FTF-Karte hebt die spezifischen Zeitpunkte und Frequenzbänder hervor, an denen die Signale je nach Bedingungen erheblich abweichen. Dies bietet ein intuitives und leistungsstarkes Werkzeug zur Analyse komplexer neuronaler Signale, beispielsweise von motorischen Bildaufgaben, ohne dass nachträgliche statistische Tests an den Leistungskarten selbst erforderlich sind.

Der MATLAB-Code in diesem Repository enthält die Funktionen und Beispielskripte, die zum Durchführen der FTF-Analyse an Ihren eigenen Zeitreihendaten erforderlich sind.

## Zitat

Wenn Sie diesen Code für Ihre Recherche verwenden, zitieren Sie bitte das folgende Dokument:

* Yeom, H. G. (2021). F-Wert-Zeit-Frequenz-Analyse (FTF): Zwischen-innerhalb-Varianzanalyse. *Frontiers in Neuroscience*, 15, 729449.
    (https://doi.org/10.3389/fnins.2021.729449)

## Nutzung

Ausführliche Anweisungen finden Sie in den MATLAB-Skripten und der Dokumentation in diesem Repository.
https://doi.org/10.3389/fnins.2021.729449
