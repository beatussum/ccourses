---
title: ""
draft: true
weight: {{ .File.ContentBaseName | int }}
---

Ce cours a été dispensé
- TODO

## Le programme étudié

TODO

## Errata

{{< hint title="À noter" >}}
Dans cette section, vous retrouverez les différentes erreurs qui ont été repérées dans le cours ainsi que leurs corrections.
{{< /hint >}}

**Rien à dire pour l'instant.**

## Resources

Les différentes resources utilisées pendant ce cours sont les suivantes :

- le support de cours que vous pouvez retrouver [ici](ressources/{{ .File.ContentBaseName }}.pdf),
- ainsi que son source LaTeX que pouvez retrouver [ici](ressources/{{ .File.ContentBaseName }}.tex).

### Compilation à partir des sources

{{< hint title="À noter" >}}
Pour compiler l'ensemble des cours, voir [la page parente](..).
{{< /hint >}}

#### Dépendances

Pour compiler spécifiquement un cours à partir des sources LaTeX, les dépendances suivantes sont nécessaires **(pour la construction uniquement)** :

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
$ make -C ccourses COURSES="<cours>" pdf
```
