# Contribuer à Formation C 17

## Table des matières

- [Table des matières](#table-des-matières)
- [Avant-propos](#avant-propos)
- [Promis, on démarre bientôt](#promis-on-démarre-bientôt)
- [Pourquoi ce fichier ?](#pourquoi-ce-fichier-)
- [Utilisation de Git](#utilisation-de-git)

- [Dura lex, sed lex](#dura-lex-sed-lex)

  - [Les conventions utilisées relatives à Hugo](#les-conventions-utilisées-relatives-à-hugo)
  - [Les conventions utilisées pour le Markdown](#les-conventions-utilisées-pour-le-markdown)
  - [Communs aux deux sections précédentes](#communs-aux-deux-sections-précédentes)

- [Typographie](#typographie)
- [Les mots anglais](#les-mots-anglais)
- [Orthographe](#orthographe)
- [Style](#style)
- [Guerre d'édition](#guerre-dédition)
- [Dura lex, sed lex (mais pas tellement…)](dura-lex-sed-lex-mais-pas-tellement)

## Avant-propos

Tout d'abord, merci de bien vouloir contribuer et d'aider les Bubus à enrichir ce wiki !
Si vous êtes tombé sur ce fichier par erreur, alors probablement vous venez d'[ici](README.md).

La lecture de [cette section](#promis-on-démarre-bientôt) et de [celle-là](#dura-lex-sed-lex) sont obligatoire avant de pouvoir commencer à contribuer.

## Promis, on démarre bientôt

Avant de commencer, il faut que vous ayez lu la section spécifiant [les règles d'édition](#dura-lex-sed-lex) et que vous soyez au point avec les outils suivant :

- le langage Markdown qui est le cœur de rendu des pages présente sur ce wiki,
- [Git](https://git-scm.com/) qui est le gestionnaire de version utilisé (vous pouvez trouver différentes resources à propos de son utilisation sur ce wiki),
- [l'instance GitLab de l'école](https://gitlab.ensimag.fr/) sur lequel se trouve se projet,
- le langage YAML pour les [_front matter_](https://gohugo.io/content-management/front-matter/),

_les outils suivants sont un peu en bonus_

- [Hugo](https://gohugo.io/) qui est le logiciel permettant de générer le site statique (pas obligatoire si vous faites seulement une modification),
- [Geekdocs](https://geekdocs.de/) (pour la configuration du thème utilisé),
- quelques bases en HTML et CSS (uniquement si vous voulez faire des modifications un peu avancées),
- quelques bases en JavaScript (utile uniquement dans de très très rares cas),
- le langage TOML pour les autres fichiers de configuration (ce point n'est pas primordial dans la grande majorité des cas).

## Pourquoi ce fichier ?

Ce document vise à établir des règles d'éditions que les auteurs d'articles sont **fortement** invités à suivre.
Il a pour but d'avoir un Wiki homogène que ce soit dans le style et la forme (en particulier quant au norme typographique) afin d'avoir une lecture plus agréable (et parce qu'au moins un des Bubus est un peu maniaque…).

Cependant, même si ce texte vise à faire autorité, il n'est pas immuable dans le temps et est amené très probablement à changer (potentiellement en profondeur).
~~Je~~ Nous ne somme pas des tyrans.

## Utilisation de Git

La stratégie de branches utilisée est [le modèle _Git flow lite_](https://nvie.com/posts/a-successful-git-branching-model/).

L'écriture d'un message de _commit_ suit les règles suivantes:

- écrire l'anglais,
- utiliser le présent (« add feature » et non « added feature »),
- utiliser l'impératif (« add feature » et non « adds feature »),
- limiter les lignes à la colonne 80 ou moins,
- ne pas oublier d'utiliser [les _Git trailers_](https://git-scm.com/docs/git-interpret-trailers/fr) appropriés.

## Dura lex, sed lex

### Les conventions utilisées relatives à Hugo

- L'utilisation de balises HTML dans les fichiers Markdown du dossier `content/` est interdite car elle peut être dangereuse.
  À la place, utilisez [les shortcodes](https://gohugo.io/content-management/shortcodes/) définis par Hugo.

- Les _front matter_ doivent être écrit au format YAML.
- Les fichiers de configuration doivent être écrit au format TOML.
- Le nom des fichiers dans `content/` (à l'exception évidente de `_index.md`, de `index.md` et des resources) doivent correspondre au titre de la page écrit en [_kebab case_](https://en.wikipedia.org/wiki/Letter_case#Kebab_case) (Non, non… C'est très sérieux.).

- Ne pas introduire des _bundles_ inutiles.

  **Exemple** :

  Ce qui suit est deux exemples de ce qu'il **ne faut pas** faire.

  ```raw
  content/
  └── git
      └── _index.md
  ```

  L'exemple ci-dessus est particulièrement horrible car la page _git_ est donc une section sans enfant : ce qui va à l'encontre même du _design_ de la chose…

  ```raw
  content/
  └── git
      └── index.md
  ```

  À la place, il est préférable de faire :

  ```raw
  content/
  └── git.md
  ```

### Les conventions utilisées pour le Markdown

- Introduire un nouveau paragraphe par un retour à la ligne et non pas par _\\_.

  **Exemple** :

  ```md
  Ceci est un paragraphe inutile.

  Ceci est un deuxième paragraphe tout aussi intéressant que le premier.
  ```

- Les listes à puces ou les énumérations doivent être séparées par un retour à la ligne du paragraphe parent.

  **Exemple** :

  ```md
  Ceci est le paragraphe parent :

  - Il n'y a une ligne vide avant cette ligne.
  - toto
  - tata
  ```

- Les listes à puces sont introduites par le caractère _\-_ et non pas par _\*_.

- Si un paragraphe est composé de plusieurs phrases, alors ces dernières doivent chacunes commencer en début de ligne.

  **Exemple** :

  ```md
  Première phrase.
  Deuxième phrase.
  Troisième phrase.

  Un autre paragraphe.
  ```

- Pour les listes à puces et les énumérations, on met un seul espace après le caractère _-_ ou le cardinal.

  **Exemple** :

  ```md
  Ceci est le paragraphe parent :
  - C'est bien.
  -  Ce n'est pas bien.
  -   C'est vraiment très très pas bien.
  ```

- On met un mot en gras en utilisant la syntaxe `**mot**`.
- On met un mot en italique en utilisant la syntaxe `_mot_`.

- Ne pas couper les paragraphes car cela rend les rééditions beaucoup plus laborieuse.

  **Exemple** :

  Ce qui est suit bien :

  ```md
  Véritable autorité morale, son statut de chef du village est incontesté parmi les Schtroumpfs.
  Il est aussi le garant de la stabilité du village, apportant régulièrement la résolution aux problèmes qui menacent les Schtroumpfs.
  ```

  À l'inverse du texte suivant :

  ```md
  Véritable autorité morale, son statut de chef du village est incontesté
  parmi les Schtroumpfs. Il est aussi le garant de la stabilité du village,
  apportant régulièrement la résolution aux problèmes qui menacent les
  Schtroumpfs.
  ```

### Communs aux deux sections précédentes

- Les tabulations sont faites avec **2 espaces**.

### Typographie

- Utiliser les guillemets française (_«_ et _»_) uniquement quand on _extrait_ du texte d'un document.
  Veiller à toujours introduire un espace entre ledit caractère et le mot entre guillemets.

  **Exemple** :

  ```md
  Cliquez sur le bouton « Quitter ».
  ```

- Toujours mettre un espace avant (ou après selon le cas) les caractères suivants _«_, _»_, _:_, _;_.

  **Exemple** :

  ```md
  La meilleure distribution GNU/Linux est la suivante : Gentoo.
  ```

### Les mots anglais

Les mots anglais sont parfaitement acceptés tant que la page reste majoritairement écrite en français (pour l'instant le wiki s'adresse à un public francophone, mais ceci peut changer à l'avenir comme **Hugo** supporte les sites multilingues).
Cependant, les mots anglais doivent être mis en italique.
L'idée est que, la plupart du temps, les mots en anglais qui reviennent dans les pages font partie du jargon informaticien : les mettre en valeur, pour cette raison, est donc une bonne idée.
Globalement, la formule « Ouvrez le file » est à éviter, mais « Ouvrez le courriel adressé à votre adresse de messagerie électronique » est à éviter également.

### Orthographe

Les fautes d'orthographes sont à éviter. Normalement, l'utilisation d'un correcteur orthographique devrait éviter la plupart des problèmes.

### Style

L'utilisation d'un style un peu formel est recommandé.
Cependant, ce document est un wiki et doit donc être facilement compréhensible avant tout.
Par exemple, le subjonctif imparfait est à éviter…

### Guerre d'édition

Vous vous demandez probablement :

> Qu'est-ce qu'une guerre d'édition ?

Je vous invite à lire [cet article Wikipédia](https://fr.wikipedia.org/wiki/Wikip%C3%A9dia:Guerre_d%27%C3%A9dition) qui détaille le sujet dans les grandes largeurs.

Il est bien évident qu'un tel comportement est interdit.

## Dura lex, sed lex (mais pas tellement…)

Si vous trouvez un des points de la section précédent aberrant et inutile, vous pouvez faire une demande de changement en utilisant [les _GitHub issues_](https://github.com/beatussum/ccourses/issues/).
