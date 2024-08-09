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

COURSE_TEX_FILES	::= $(foreach course,$(COURSES),content/cours/$(course)/ressources/$(course).tex)
COURSE_PDF_FILES	::= $(COURSE_TEX_FILES:.tex=.pdf)

CLASS_FILE	?= content/cours/ressources/ccourses.cls
CLASS_BUILD_DIR	= $@/tex/latex

BASE_URL	?=
HUGO_GENERATED	?= public resources

THEME_NAME	?= hugo-geekdoc
THEME_VERSION	?= 0.47.0
THEME_DIR	?= themes/$(THEME_NAME)
THEME_URL	?= https://github.com/thegeeklab/hugo-geekdoc/releases/download/v$(THEME_VERSION)/hugo-geekdoc.tar.gz

BUILD_DIR		?= build
TEXMFHOME		?= $(BUILD_DIR)/texmf-home

COURSE			= $(basename $(notdir $@))
COURSE_BUILD_DIR	= $(BUILD_DIR)/$(COURSE).d
COURSE_PDF_FILE		= $(COURSE_BUILD_DIR)/$(COURSE).pdf

CP_CMD		?= cp
HUGO_SITE_CMD	?= hugo --environment production --gc --minify
HUGO_SERVER_CMD	?= hugo server
MKDIR_CMD	?= mkdir -p
MKTEXLSR_CMD	?= mktexlsr
PDFLATEX_CMD	?= TEXMFHOME=$(TEXMFHOME) pdflatex -interaction=nonstopmode -shell-escape
RM_CMD		?= rm -f
RMDIR_CMD	?= rm -fr
TAR_CMD		?= tar
WGET_CMD	?= wget

BUILD_CURRENT_LATEX	= $(PDFLATEX_CMD) -output-directory=$(COURSE_BUILD_DIR) $<

.PHONY: all
all: pdf site theme

.PHONY: pdf
pdf: $(COURSE_PDF_FILES)

.PHONY: server
server: pdf theme
	$(HUGO_SERVER_CMD)

.PHONY: site
site: pdf theme
	$(HUGO_SITE_CMD) --baseURL "$(BASE_URL)"

.PHONY: theme
theme: $(THEME_DIR)

.PHONY: clean
clean:
	$(RMDIR_CMD) $(BUILD_DIR)
	$(RMDIR_CMD) $(HUGO_GENERATED)

.PHONY: mrproper
mrproper: clean
	$(RM_CMD) $(COURSE_PDF_FILES)
	$(RMDIR_CMD) $(THEME_DIR)

$(BUILD_DIR):
	$(MKDIR_CMD) $@

$(TEXMFHOME): $(BUILD_DIR)
	$(MKDIR_CMD) $(CLASS_BUILD_DIR)
	$(CP_CMD) $(CLASS_FILE) $(CLASS_BUILD_DIR)
	$(MKTEXLSR_CMD) $@

%.pdf: %.tex $(BUILD_DIR) $(TEXMFHOME)
	$(MKDIR_CMD) $(COURSE_BUILD_DIR)

	$(BUILD_CURRENT_LATEX)
	$(BUILD_CURRENT_LATEX)

	$(CP_CMD) $(COURSE_PDF_FILE) $@

$(THEME_DIR):
	$(MKDIR_CMD) $@
	$(WGET_CMD) -O - $(THEME_URL) | $(TAR_CMD) -xz -f - -C $@
