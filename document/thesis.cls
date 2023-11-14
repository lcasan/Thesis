% IDENTIFICATION 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2022/22/12 Created by Luis Miguel Casan Gonzalez]

% PRELIMINARIY DECLARATIONS
\LoadClass{article}

% BIBLIOGRAPHY STYLE
\RequirePackage[english,spanish,es-ucroman,es-tabla]{babel}
\RequirePackage{tabularx}
\bibliographystyle{plain}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage{subfigure}
\RequirePackage{caption}

% THESIS GEOMETRY
\RequirePackage{geometry}
\newgeometry{
   top = 0in,
   left = 0in,
   right = 0in,
   bottom = 0in
}
\newcommand{\thesisgeometry}{
   \newgeometry{
        top = 2.5cm,
        left = 2.5cm,
        right = 2.5cm,
        bottom = 2.5cm
    }
}

% TITLE
\RequirePackage{graphicx}
\newcommand{\advisor}[1]{\def\@advisor{#1}}
\newcommand{\degree}[1]{\def\@degree{#1}}
\newcommand{\faculty}[1]{\def\@faculty{#1}}
\newcommand{\logo}[1]{\def\@logo{#1}}

\def\maketitle{
  \thispagestyle{empty}
  % LEFT BACKGROUND OF TTITLE
   \begin{minipage}[c]{0.6\textwidth}
      \hspace{-0.8in}\includegraphics[height=\textheight, width= 0.99\textwidth]{images/background.png}
   \end{minipage}
   % CONTENT OF TITLE
   \hspace{-0.5in}
   \begin{minipage}[c]{0.4\textwidth}
      \begin{center}
         {\large Universidad de Oriente} \\ \@faculty \\ 
         \vskip 0.25cm
         \includegraphics[width=2.06in, height=0.7in]{images/logo.png} \\
         \vskip 1cm
         \vfill
         {\large \textbf{\@title}} \\
         \vskip 2cm
         {\large Autor: \textbf{\@author}} \\
         \vskip 0.5cm
         {\large Tutores: \textbf{\@advisor}} \\
         \vskip 8cm
         \vfill 
         {\large TESIS PRESENTADA EN OPCIÓN AL TÍTULO ACADÉMICO DE LICENCIADO EN CIENCIA DE LA COMPUTACIÓN} \\
         \vskip 1cm
         {Noviembre de 2023}
         %\@date
      \end{center}
   \end{minipage}
}

% ENVIROMENTS OF THESIS 
% FRONT SECTION:
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

% MAIN SECTION 
\newenvironment{introduction}
{
   \addcontentsline{toc}{section}{Introducción}
   \pagenumbering{arabic}
   \section*{Introducción}
}
{}

% COMMANDS FOR THESIS'S CHAPTERS
\newcommand{\subthesischapter}[1]{\subsection{#1} }
\newcommand{\subsubthesischapter}[1]{\subsubsection{#1} }

\newenvironment{thesischapter}[2]
{
   \addcontentsline{toc}{section}{Capítulo #1 : #2}
   \section*{Capítulo #1: #2}
   \setcounter{section}{#1}
   \setcounter{subsection}{0}
}
{}

\newenvironment{conclusions}
{
   \addcontentsline{toc}{section}{Conclusiones}
   \section*{Conclusiones}
}
{}

\newenvironment{recommendations}
{
   \addcontentsline{toc}{section}{Recomendaciones}
   \section*{Recomendaciones}
}
{}

% BACK SECTION
\newenvironment{annexes}[1]
{
   \addcontentsline{toc}{section}{Anexo #1}
   \section*{Anexo #1}
}
{}

% CODE: 
\definecolor{codegreen}{rgb}{0.1, 0.5, 0.1}
\definecolor{codegray}{rgb}{0.5, 0.5, 0.5}
\definecolor{codepurple}{rgb}{0.58, 0, 0.82}
\definecolor{backcolour}{rgb}{0.95, 0.95, 0.92}

\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolour},
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\footnotesize\ttfamily,
    breakatwhitespace=false,
    breaklines=true,
    captionpos=b,
    keepspaces=true,
    numbers=left,
    numbersep=5pt,
    showspaces=false,
    showstringspaces=false,
    showtabs=false,
    frame=single,
    tabsize=2
}


\lstset{style=mystyle}

% CHANGE PREFIX OF CODE LISTING TITLES
\captionsetup[listing]{labelformat=simple, labelsep=colon}
\renewcommand\lstlistingname{Código}