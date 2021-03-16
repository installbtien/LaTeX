\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}

\DeclareOption{zh}{\Chinesetrue\Englishfalse}
\DeclareOption{en}{\Chinesefalse\Englishtrue}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass[12pt, a4paper]{article}

\linespread{1.25}

\RequirePackage[utf8]{inputenc}
\RequirePackage[left=2.75cm, right=2.75cm, top=3.2cm, bottom=3.5cm]{geometry}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{hyperref}
\RequirePackage{amsmath, mathtools}
\RequirePackage{color}
\RequirePackage{ragged2e}
\RequirePackage[english]{babel}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{setspace}
\RequirePackage{xeCJK}
\RequirePackage{fontspec}

\setmainfont{Minion Pro}
\setCJKmainfont{Noto Serif CJK TC}
%中文自動換行
\XeTeXlinebreaklocale "zh"
%文字的彈性間距
\XeTeXlinebreakskip = 0pt plus 1pt


\renewcommand{\baselinestretch}{1.2}

\newcommand{\course}[2]{
	\chead{\large{#1}}
	\lhead{Homework #2 \\ \today}
}

\pagestyle{fancy}
\fancyhf{}
\rhead{B08504055 \\ 田沛茵}
\rfoot{\thepage}


\titleformat{\section}         % Customise the \section command 
  {\large\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {\scshape Problem \thesection}{1em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
\titlespacing*{\section}{0cm}{*1}{*1}
