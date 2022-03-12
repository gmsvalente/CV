\ProvidesClass{cv}[]
\NeedsTeXFormat{LaTeX2e}
\ProcessOptions\relax
\LoadClass{article}

\newcommand{\userinfo}[1]{\renewcommand{\userinfo}{#1}}

%%% color
\RequirePackage[usenames,dvipsnames]{xcolor}

\definecolor{red}{HTML}{FF0000}
\definecolor{black}{HTML}{000000}
\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{lightgray}{HTML}{999999}
\colorlet{headercolor}{gray}

\newcommand{\headerfont}[1]{\fontfamily{#1}\selectfont }

%%% HEADER

%% \RequirePackage{algolrevived}
\RequirePackage{tikz}

\newcommand{\header}[3]{%
  \begin{tikzpicture}[remember picture,overlay]
    \node [rectangle, fill=gray, anchor=north, minimum width=\paperwidth, minimum height=4cm] (box) at (current page.north){};
    \node [anchor=center] (name) at (box){%
      \fontsize{40pt}{72pt}\color{white}
      {\headerfont{AlgolRevived-TLF}#1}{\texttt{\headerfont{AlgolRevived-TLF}#2}}};
    \node [anchor=north] at (name.south) {%
      \headerfont{AlgolRevived-TLF}
      
      \fontsize{24pt}{36pt}\color{white}%
      #3
    };
  \end{tikzpicture}
  \vspace{2.5cm}
  \vspace{-2\parskip}
}



\setlength{\tabcolsep}{0pt}

\newenvironment{entrylist}{}

\newcommand{\entry}[3]{%
\textbf{#1} \large #2 \normalsize #3
\Large}
