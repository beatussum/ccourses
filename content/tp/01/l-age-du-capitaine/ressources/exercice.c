#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>

/**
 * @brief Rercherche l'âge du capitaine par dichotomie
 *
 * @param[in] __inf La borne inférieure utilisée
 * @param[in] __sup La borne supérieure utilisée
 *
 * @return La valeur booléenne correspondante au résultat de la recherche
 */

bool binary_search(uint16_t __inf, uint16_t __sup)
{
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
