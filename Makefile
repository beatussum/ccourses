# Copyright (C) 2024 Mattéo Rossillol‑‑Laruelle <beatussum@protonmail.com>
#
# This program is free software: you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option) any later
# version.
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
# details.
#
# You should have received a copy of the GNU General Public License along with
# this program. If not, see <https://www.gnu.org/licenses/>.


COURSES	?=

COURSE_TEX_FILES	::= $(patsubst %,content/cours/%/ressources/cours.tex,$(COURSES))
COURSE_PDF_FILES	::= $(COURSE_TEX_FILES:.tex=.pdf)

CLASS_FILE	?=
CLASS_BUILD_DIR	= $@/tex/latex

HUGO_GENERATED	?= public resources

THEME_NAME	?= hugo-geekdoc
THEME_VERSION	?= 0.47.0
THEME_DIR	?= themes/$(THEME_NAME)
THEME_URL	?= https://github.com/thegeeklab/hugo-geekdoc/releases/download/v$(THEME_VERSION)/hugo-geekdoc.tar.gz

BUILD_DIR		?= build
TEXMFHOME		?= $(BUILD_DIR)/texmf-home
COURSE_BUILD_DIR	= $(patsubst content/cours/%/ressources/cours.pdf,$(BUILD_DIR)/%.d,$@)

CP_CMD		?= cp
MKDIR_CMD	?= mkdir
MKTEXLSR_CMD	?= mktexlsr
PDFLATEX_CMD	?= TEXMFHOME=$(TEXMFHOME) pdflatex -interaction=nonstopmode -shell-escape
RM_CMD		?= rm
TAR_CMD		?= tar
WGET_CMD	?= wget

BUILD_CURRENT_LATEX	= $(PDFLATEX_CMD) -output-directory=$(COURSE_BUILD_DIR) $<

.PHONY: all
all: pdf theme

.PHONY: pdf
pdf: $(COURSE_PDF_FILES)

.PHONY: theme
theme: $(THEME_DIR)

.PHONY: clean
clean:
	$(RM_CMD) -fr $(BUILD_DIR)
	$(RM_CMD) -fr $(HUGO_GENERATED)

.PHONY: mrproper
mrproper: clean
	$(RM_CMD) -f $(COURSE_PDF_FILES)
	$(RM_CMD) -fr $(THEME_DIR)

$(BUILD_DIR):
	$(MKDIR_CMD) $@

$(TEXMFHOME): $(BUILD_DIR)
	$(MKDIR_CMD) -p $(CLASS_BUILD_DIR)
	$(CP_CMD) $(CLASS_FILE) $(CLASS_BUILD_DIR)
	$(MKTEXLSR_CMD) $@

%.pdf: %.tex $(BUILD_DIR) $(TEXMFHOME)
	$(MKDIR_CMD) $(COURSE_BUILD_DIR)

	$(BUILD_CURRENT_LATEX)
	$(BUILD_CURRENT_LATEX)

	$(CP_CMD) $(COURSE_BUILD_DIR)/cours.pdf $@

$(THEME_DIR):
	$(MKDIR_CMD) $@
	$(WGET_CMD) -O - $(THEME_URL) | $(TAR_CMD) -xz -f - -C $@
