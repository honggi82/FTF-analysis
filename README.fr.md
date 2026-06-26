# Analyse temps-fréquence (FTF) de la valeur F
![F-value time-frequency (FTF) analysis](FTF_analysis.JPG)

<div align="center">
  <a href="README.md">English</a> |
  <a href="README.de.md">Deutsch</a> |
  <a href="README.es.md">Español</a> |
  <a href="README.fr.md"><strong>français</strong></a> |
  <a href="README.ja.md">日本語</a> |
  <a href="README.ko.md">한국어</a> |
  <a href="README.pt.md">Português</a> |
  <a href="README.ru.md">Русский</a> |
  <a href="README.zh.md">中文</a>
</div>

Ce référentiel fournit le code MATLAB pour la méthode d'analyse temps-fréquence (FTF) de la valeur F proposée dans l'article « Analyse temps-fréquence (FTF) de la valeur F : analyse de la variance entre-intérieurs ».

## Algorithme : analyse temps-fréquence (FTF) de la valeur F

L'analyse FTF est une nouvelle technique qui visualise la signification statistique sur une carte temps-fréquence en appliquant la valeur F d'une analyse de variance (ANOVA). Il est conçu pour identifier et quantifier les différences entre plusieurs conditions dans des données de séries chronologiques, telles que l'électroencéphalographie (EEG).

### Principales fonctionnalités et méthodologie
* **Visualisation statistique** : contrairement aux tracés temps-fréquence traditionnels qui affichent uniquement la puissance ou l'amplitude, le tracé FTF visualise directement la valeur F à chaque point temps-fréquence. Cela permet aux chercheurs d’identifier immédiatement où se situent les différences les plus significatives entre les conditions expérimentales.
* **Analyse de la variance** : le cœur de la méthode consiste à calculer le rapport entre la variance entre les conditions et la variance au sein des conditions. Une valeur F élevée indique que la variation entre les conditions est nettement plus grande que la variation au sein de chaque condition, ce qui suggère un véritable effet.
* **Interprétation intuitive** : la carte FTF résultante met en évidence les points temporels spécifiques et les bandes de fréquences où les signaux divergent considérablement selon les conditions. Cela fournit un outil intuitif et puissant pour analyser les signaux neuronaux complexes, tels que ceux issus de tâches d’imagerie motrice, sans avoir besoin de tests statistiques post-hoc sur les cartes de puissance elles-mêmes.

Le code MATLAB de ce référentiel comprend les fonctions et exemples de scripts nécessaires pour effectuer l'analyse FTF sur vos propres données de séries chronologiques.

## Citation

Si vous utilisez ce code pour votre recherche, veuillez citer l'article suivant :

* Yeom, HG (2021). Analyse temps-fréquence (FTF) de la valeur F : analyse de la variance entre-intérieur. *Frontières des neurosciences*, 15, 729449.
    (https://doi.org/10.3389/fnins.2021.729449)

## Utilisation

Pour des instructions détaillées, veuillez vous référer aux scripts et à la documentation MATLAB dans ce référentiel.
https://doi.org/10.3389/fnins.2021.729449
