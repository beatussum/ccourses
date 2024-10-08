---
title: "Cours"
---

{{< hint type=warning >}}

Il est important de rappeler que ce cours est réalisé par **un étudiant**.

Par conséquent, il n’a pas la même fiabilité qu’un cours dispensé par **un réel enseignant de l’ENSIMAG**.

N’utilisez pas ce cours comme **un argument d’autorité** !

Si un professeur semble, a posteriori, contredire des éléments apportés par ce cours, **il a très probablement raison**.

**Ce site est vivant** : je veillerai à corriger les coquilles ou erreurs plus problématiques.

{{< /hint >}}

## Table des matières

{{< toc-tree >}}

## Ressources communes

Tous les cours présents dans cette section ont été créé en utilisant [cette classe LaTeX](ressources/ccourses.cls) dont je suis l'auteur (Mattéo Rossillol‑‑Laruelle).
Comme tous les autres documents se trouvant sur ce site, ce fichier est sous licence [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/legalcode.fr).

### Compilation à partir des sources

#### Dépendances

Pour compiler l'ensemble des cours à partir des sources LaTeX, les dépendances suivantes sont nécessaires **(pour la construction uniquement)** :

- [GNU Make](https://www.gnu.org/software/make/),
- [GNU core utilities](https://www.gnu.org/software/coreutils/),
- [Git](https://git-scm.com/),
- une distribution LaTex comme, par exemple, [TeX Live](https://www.tug.org/texlive/).

{{< hint title="À noter" >}}

Les deux premiers programmes devrait déjà être installés comme paquets systèmes sous la plupart des distributions GNU/Linux.
Ainsi, sous Ubuntu, l'installation des dépendances se résume à la ligne de commande suivante :

```console
$ sudo apt install git texlive
```

{{< /hint >}}

#### Construction

On peut maintenant procéder à la construction avec les lignes de commande suivantes :

```console
$ git clone https://github.com/beatussum/ccourses.git
$ make -C ccourses pdf
```
