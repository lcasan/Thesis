% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2022/22/12 Created by Luis Miguel Casan Gonzalez]

% Preliminary declarations
\RequirePackage[utf8]{inputenc}
\LoadClass{article}

% Change pages style
% ..... 

% Title
% .....

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

