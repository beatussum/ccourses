---
title: "L'âge du capitaine"
draft: true
weight: 01

geekdocDescription: "Un exercice portant sur la recherche par dichotomie"
---

## Table des matières

{{< toc >}}

## Présentation de l'exercice

Dans le port, il y a un très beau bateau ; dans le bateau, il y a un très vieux capitaine ; ou peut-être pas tant que ça...

Votre objectif est de deviner l’âge du capitaine en un minimum d'étape car celui-ci est très susceptible.

Il vous indiquera seulement si votre estimation est **trop haute** ou **trop basse**.

Cependant, vous n'êtes pas qu'un simple matelot de basse extraction, **vous êtes informaticien** !
Pourquoi s'embêter à résoudre ce problème quand un programme peut le faire à votre place ?
Puis, en cas d'erreur, cela vous éviterait d'être confronté directement à l'ire de ce vieillard...

## Implémentation

On vous propose de compléter le programme suivant que vous pouvez télécharger [ici](ressources/exercice.c).

{{< include file="ressources/exercice.c" language=c >}}

Il vous est demandé de compléter la fonction `bool binary_search(uint16_t, uint16_t)`.

**Pour tester votre programme, vous jouerez le capitaine.**

À chaque tour, le programme doit être capable de vous proposer un âge et vous lui répondrez si la réponse est **trop haute**, **trop basse**... ou **correcte** !

Pour cette raison, il est recommandé de fixer trois caractères correspondant à ces réponses.
Par exemple, on peut proposer `h`, `b` et `c` correspondant respectivement aux réponses **trop haute**, **trop basse** et **correcte**.

{{< hint type=note >}}

Pour récupérer un caractère depuis **l'entrée standard**, il est possible d'utiliser [la fonction `int getchar()`](https://en.cppreference.com/w/c/io/getchar).

Pour imprimer une chaîne de caractère sur **la sortie standard**, il est possible d'utiliser [la fonction `int puts(const char *__str)`](https://en.cppreference.com/w/c/io/puts).

Par exemple,

```c
#include <stdio.h>

int main()
{
    puts("L'exemple commence.");

    char c = (char) getchar(); //< On convertit le `int` en `char`
    printf("Le caractère récupéré est %c.", c);
    
    puts("L'exemple est terminé.");

    return 0;
}
```

{{< /hint >}}

## Correction proposée

{{< expand "Correction proposée" >}}

On vous propose la correction suivante que vous pouvez télécharger [ici](ressources/correction.c).

{{< include file="ressources/correction.c" language=c >}}

{{< /expand >}}
