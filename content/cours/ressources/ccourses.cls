%% ccourses.cls
%% Copyright 2024 Mattéo Rossillol‑‑Laruelle.
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   https://www.latex-project.org/lppl.txt
% and version 1.3c or later is part of all distributions of LaTeX
% version 2008 or later.
%
% This work has the LPPL maintenance status `maintained'.
%
% The Current Maintainer of this work is Mattéo Rossillol‑‑Laruelle.
%
% This work consists of the file courses.cls.


\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{cppcourses}[My custom LaTeX beamer]

\LoadClass[aspectratio = 1610, french]{beamer}

\usetheme{Madrid}

\setbeamercovered{transparent}
\setbeamertemplate{caption}[numbered]

% Packages

%% Font configuration

\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}

%% i18n packages

\RequirePackage[french, english]{babel}
\RequirePackage{fvextra} % needed to be loaded before `csquotes`
\RequirePackage[autostyle = true]{csquotes} % for `\enquote` command
\RequirePackage[useregional]{datetime2} % better date formatting
\RequirePackage{icomma} % fix comma space

%% Packages for maths and physics

\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{nicefrac}
\RequirePackage[arrowdel]{physics}
\RequirePackage{siunitx}
\RequirePackage{stmaryrd} % for some math operators

%% Main packages

\RequirePackage[french]{cleveref}
\RequirePackage[most]{tcolorbox}

%% `tabular` packages

\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{tabularx}

%% Drawing packages

\RequirePackage{svg}
\RequirePackage{tikz}
\RequirePackage[svgnames, table]{xcolor}

% Some command overrides

\AtBeginDocument{\RenewCommandCopy\qty\SI} % conflict with `physics`
\renewcommand{\arraystretch}{1.5}

%% Patch cleveref

%%% See https://tex.stackexchange.com/a/670393.

\makeatletter
\patchcmd\@cref{\begingroup}{\begingroup\@safe@activestrue}{}{\fail}
\patchcmd\@cref{\cref@isstackfull{\@refsubstack}}{\cref@isstackfull{\@refsubstack}\@safe@activesfalse}{}{\fail}
\makeatother

%% Section headers

\renewcommand{\thesection}{\Roman{section}}
\renewcommand{\thesubsection}{\arabic{subsection}}
\renewcommand{\thesubsubsection}{\alph{subsubsection}}

% New commands

\newcommand{\mydef}[1]{\textcolor{red}{\text{#1}}}
\newcommand{\myimp}[1]{\textcolor{teal}{\text{#1}}}

\newcommand{\myand}{\text{ et }}
\newcommand{\myor}{\text{ ou }}

%% Bitwise operators

\newcommand{\notb}{\overline}
\newcommand{\xor}{\oplus}

\newcommand{\xnor}{\notb{\oplus}}
\newcommand{\nand}{\notb{\cdot}}
\newcommand{\nor}{\notb{+}}

% `amsmath`

\DeclareMathOperator{\naturalset}{\mathbb{N}}
\DeclareMathOperator{\realset}{\mathbb{R}}

% `mathtools`

\DeclarePairedDelimiter{\ceil}{\lceil}{\rceil}
\DeclarePairedDelimiter{\floor}{\lfloor}{\rfloor}
\DeclarePairedDelimiter{\iinterval}{\llbracket}{\rrbracket}

% `tabularx`

\newcolumntype{Y}{>{\centering\arraybackslash}X}

% Some `tcolorbox` definitions

%% Styles

\tcbset{
    tab/.style = {
        center title,
        colback = white!10!white,
        colbacktitle = Salmon!40!white,
        colframe = red!50!black,
        coltitle = black,
        enhanced,
        fonttitle = \bfseries,
        fontupper = \normalsize \sffamily
    }
}

%% Environments

\newtcolorbox{tcbtabular}[2]{
    tab,
    tabularx = {#1},
    #2
}

% Other package setups

\sisetup{
    locale = FR,
    group-digits = integer,
    group-minimum-digits = 3,
    input-complex-root,
    list-units = single,
    per-mode = power-positive-first,
    range-units = single,
    retain-explicit-plus,
    separate-uncertainty,
    separate-uncertainty-units = single,
    table-alignment-mode = format,
    table-auto-round,
    uncertainty-mode = separate
}

% General setup

\author[Mattéo R.-{}-L.]{Mattéo ROSSILLOL‑{}‑LARUELLE}