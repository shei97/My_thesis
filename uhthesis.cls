\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uhthesis}[2011/04/12 0.1 uhthesis]

\RequirePackage[utf8]{inputenc}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\relax
\LoadClass{book}
\RequirePackage{mathptmx}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}

\RequirePackage[refpage, intoc, spanish]{nomencl}
\RequirePackage[spanish]{babel}
\RequirePackage[fixlanguage]{babelbib}
\RequirePackage{graphicx}
\usepackage{transparent}
\RequirePackage{xcolor}
\RequirePackage[nottoc,notlof,notlot]{tocbibind}
\RequirePackage{footmisc}


\RequirePackage[pagebackref,linktocpage,breaklinks,colorlinks,%
                linkcolor=black,anchorcolor=black,citecolor=black,%
                filecolor=black,menucolor=black,runcolor=black,%
                urlcolor=black]{hyperref}
                
% fancyhdr settings from texlive-doc
\RequirePackage{fancyhdr}
\fancypagestyle{plain}{%
\fancyhf{} % clear all header and footer fields
\fancyfoot[C]{\bfseries \thepage} % except the center
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}}

%\fancyhf{}
%\if@twoside
  % \renewcommand{\chaptermark}[1]{\markboth{\small \ \chaptername\ \thechapter. \ #1}{}}
  %  \renewcommand{\sectionmark}[1]{\markright{\thesection \ \ #1}}
 %   \fancyhead[L]{\slshape \leftmark}
%    \fancyhead[R]{\thepage}
 %  \fancyhead[LO]{\slshape \rightmark}
 %   \fancyhead[RO,LE]{\textbf{\thepage}}
%    \fancyhead[RE]{\slshape \leftmark}
%\else
 %  \renewcommand{\chaptermark}[1]{\markboth{\small \ \chaptername\ \thechapter. \ #1}{}}
%    \fancyhead[L]{\slshape \leftmark}
 %   \fancyhead[R]{\thepage}
%\fi

	
\setlength\oddsidemargin{36.1\p@}
\setlength\evensidemargin{36.1\p@}
\setlength\marginparwidth{36.1\p@}
\marginparsep 10pt
\topmargin 0pt \headsep .5in
%\textheight 8.1in \textwidth 6in

% More liberal float placement from BYUPhys.cls.
\renewcommand{\topfraction}{0.9}
\renewcommand{\bottomfraction}{0.8}
\setcounter{topnumber}{2}
\setcounter{bottomnumber}{2}
\setcounter{totalnumber}{4}
\renewcommand{\textfraction}{0.07}

\let\cleardoublepage\clearpage

% Backreferences in the bibliography.
%\backrefspanish
%\renewcommand{\backref}[1]{}
%\renewcommand{\backrefalt}[4]{%
%  \ifcase #1 \relax%
%  \or (Citado en la página~#2).%
%  \else (Citado en las páginas~#2).%
%  \fi%
%}
\btxifchangecaseoff
\renewcommand{\btxselectlanguage}[1]{\relax}

% Book edition numbers.
%\declarebtxcommands{spanish}{%
%  \def\btxnumeralshort#1{#1.^a}%
%  \def\btxnumerallong#1{%
%    \ifnumber{#1}{%
%      \ifcase#1 0\or
 %      primera\or segunda\or tercera\or cuarta\or quinta\or
 %       sexta\or séptima\or octava\or novena\or décima\else
 %       #1.^a%
%      \fi%
%    }%
%    {#1}%
%  }%
%}

\renewcommand{\nomname}{Glosario}
\newcommand{\advisor}[1]{\def\@advisor{#1}}
\newcommand{\degree}[1]{\def\@degree{#1}}
\newcommand{\faculty}[1]{\def\@faculty{#1}}
\newcommand{\logo}[1]{\def\@logo{#1}}

\newenvironment{opinion}%
  {\chapter*{Opinión del tutor}}%
  {}
\newenvironment{acknowledgements}%
  {\chapter*{Agradecimientos}}%
  {}
\newenvironment{abstract}%
  {\chapter*{Resumen}}%
  {}
\newenvironment{introduction}%
  {
  %\cleardoublepage%
   %\phantomsection%
   \addcontentsline{toc}{chapter}{Introducción}%
   \chapter*{Introducción}}%
  {}
\newenvironment{conclusions}%
  {
  %\cleardoublepage%
   %\phantomsection%
   \addcontentsline{toc}{chapter}{Conclusiones}%
   \chapter*{Conclusiones}}%
  {}
\newenvironment{recomendations}%
  {
  %\cleardoublepage%
  %\phantomsection%
   \addcontentsline{toc}{chapter}{Recomendaciones}%
    \chapter*{Recomendaciones}}%
  {}
\newenvironment{dedication}%
  {
  %\cleardoublepage%
   \thispagestyle{empty}%
   \vskip 3.5cm%
   \begin{flushright}}%
  {\end{flushright}}

\newtheorem{theorem}{Teorema}
\newtheorem{definition}{Definición}


\AtBeginDocument{%
  \hypersetup{pdftitle=\@title,pdfauthor=\@author}%
  % Renaming cuadro to tabla.
  \renewcommand{\listtablename}{Índice de tablas}%
  \renewcommand{\tablename}{Tabla}%
}

% The title page.
\def\maketitle{%
  \thispagestyle{empty}%
  \begin{center}
    {\large Universidad de La Habana} \\ \@faculty \\ 
    \vskip 0.25cm
    \includegraphics[width=1.75cm]{\@logo} \\
    \vfill
    {\LARGE \textbf{\@title}} \\
    \vfill
   % \vskip 2cm
    {\Large Autor: \textbf{\@author}} \\
    \vskip 0.5cm 
    {\Large Tutores: \textbf{\@advisor}} \\
    \vskip 0.7cm
    %\includegraphics[width=2.2cm]{Imagenes/ipkv2.jpg}
    \vfill
    {\large Trabajo de Diploma presentado en opción \linebreak al título de Licenciada en Bioquímica \linebreak y Biología Molecular. } \\
    %\vskip 0.25cm
    \@date
    \vskip 0.25cm
   %{\transparent{0.6}  \includegraphics[width=2.2cm]{Imagenes/mosquito.jpg}}
    %\vskip 0.25cm
    
  \end{center}
}

\def\frontmatter{
  %\pagenumbering{roman}
  \pagestyle{empty}
  %\clearpage
}

\def\mainmatter{
  %\cleardoublepage
  \pagenumbering{arabic}
  \pagestyle{plain}
}

\def\backmatter{%
  \pagestyle{plain}
}
