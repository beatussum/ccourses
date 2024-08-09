---
title: "Les conventions utilisées"
geekdocDescription: "Conventions utilisées pour Hugo et le format Markdown"
---

## Table des matières

{{< toc >}}

## Les conventions utilisées relatives à Hugo

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

## Les conventions utilisées pour le Markdown

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

## Communs aux deux sections précédentes

- Les tabulations sont faites avec **2 espaces**.
