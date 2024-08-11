#include <stdint.h>
#include <stdio.h>

enum bool { false, true };

/**
 * @brief Rercherche l'âge du capitaine par dichotomie
 *
 * @param[in] __inf La borne inférieure utilisée
 * @param[in] __sup La borne supérieure utilisée
 *
 * @return La valeur booléenne correspondante au résultat de la recherche
 */

enum bool binary_search(uint16_t __inf, uint16_t __sup)
{
	while ((__inf <= __sup) && (__sup != UINT16_MAX)) {
		uint16_t mid = (__inf + __sup) / 2;

		printf("Avez-vous %u ans ? (h/b/c) ", mid);

		char answer = (char) getchar();
		getchar(); //< On consomme le caractère `\n`

		if (answer == 'h') {
			__sup = mid - 1;
		} else if (answer == 'b') {
			__inf = mid + 1;
		} else if (answer == 'c') {
			return true;
		}
	}

	return false;
}

int main()
{
	if (binary_search(0, 100)) {
		puts("L'âge du capitaine a été trouvé !");
	} else {
		puts("Le capitaine est peut-être mauvais perdant !");
	}

	return 0;
}
