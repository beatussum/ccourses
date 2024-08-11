---
title: "Énumérables"
draft: true
weight: 02

geekdocDescription: "Un exercice pour découvrir les énumérables"
---

## Table des matières

{{< toc >}}

## Présentation de l'exercice

Que se cache-t-il derrière `#include <stdbool.h>` ?
Vaste question...
Et bien... nous allons le découvir dans cet exercice !

Comme il est étrange pour un langage de programmation de ne pas avoir de type booléen...
Pourtant, en C, c'est bien le cas.

**La règle est la suivante toute valeur nulle (resp. non nulle) est fausse (resp. vraie).**

## Implémentation

On reprend la correction proposée de l'exercice précédent.
Il s'agit du programme suivant que vous pouvez télécharger [ici](ressources/exercice.c).

{{< include file="ressources/exercice.c" language=c >}}

L'objectif de cette exercice est d'implémenter les booléens comme définis dans la bibliothèque standard en utilisant un `enum`.

{{< hint type=note >}}

Un `enum` ou énumérable est un type distinct qui définit un groupe de constantes nommées.

Par exemple,

```c
enum animal_type { cat, doc = 4, bird };

int main() {
    // On utilise `enum animal_type` et non `animal_type`
    enum animal_type pipou = cat;

    return 0;
}
```

`animal_type` se comporte comme un entier : on dit que son type sous-jacent (ou _underlying type_) est `int`.
De plus, `cat` vaut implicitement 0, `doc` vaut explicitement 4 et `bird` vaut implicitement 4 + 1 = 5.

{{< /hint >}}

## Correction proposée

{{< expand "Correction proposée" >}}

On vous propose la correction suivante que vous pouvez télécharger [ici](ressources/correction.c).

{{< include file="ressources/correction.c" language=c >}}

{{< hint type=note >}}
`false` vaut 0 et `true` vaut 1.
{{< /hint >}}

{{< /expand >}}
