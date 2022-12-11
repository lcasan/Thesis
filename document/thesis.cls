% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2022/22/12 Created by Luis Miguel Casan Gonzalez]

% Preliminary declarations
\LoadClass{article}

% Bibliography style
\RequirePackage{apacite}
\RequirePackage[spanish]{babel}
\bibliographystyle{apacite}

% Change pages style
\RequirePackage{geometry}
\newgeometry{
   top = 1in,
   left = 1in,
   right = 1in,
   bottom = 1in
}

% Title
\newcommand{\advisor}[1]{\def\@advisor{#1}}
\newcommand{\degree}[1]{\def\@degree{#1}}
\newcommand{\faculty}[1]{\def\@faculty{#1}}
\newcommand{\logo}[1]{\def\@logo{#1}}

\def\maketitle{%
  \thispagestyle{empty}%
  \begin{center}
    {\large Universidad de Orinte} \\ \@faculty \\ 
    \vskip 0.25cm
    %\includegraphics[width=1.75cm]{\@logo} \\
    \vfill
    {\large \textbf{\@title}} \\
    \vskip 2cm
    {\large Autor: \textbf{\@author}} \\
    \vskip 0.5cm
    {\large Tutores: \textbf{\@advisor}} \\
    \vfill
    {\large Trabajo de Diploma \\presentado en opción al título de \\ \@degree} \\
    \vskip 1cm
    \@date
  \end{center}
}

% Environments of thesis 
% Front section

\newenvironment{dedication}
   {
      \thispagestyle{empty}
      \vskip 3.5cm
      \begin{flushright}
   }
   { \end{flushright} }

\newenvironment{acknowledgements}
   {
      \thispagestyle{empty}
      \section*{Agradecimientos}
   }
   {}

\newenvironment{resumen}
   {
      \thispagestyle{empty}
      \section*{Resumen}
   }
   {}

\renewenvironment{abstract}
   {
      \thispagestyle{empty}
      \section*{Abstract}
   }
   {}

% Main section 

\newenvironment{introduction}
   {
      \addcontentsline{toc}{section}{Introducción}
      \pagenumbering{arabic}
      \section*{Introducción}
   }
   {}

% Back section
% ..... 

