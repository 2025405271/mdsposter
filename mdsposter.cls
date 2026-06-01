\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mdsposter}[2026-04-21 v0.4]

\RequirePackage{ifthen}
\RequirePackage{color}
\RequirePackage{bxpapersize}

\DeclareOption{platex}{\PassOptionsToClass{\CurrentOption}{jlreq}}
\DeclareOption{uplatex}{\PassOptionsToClass{\CurrentOption}{jlreq}}
\DeclareOption{lualatex}{\PassOptionsToClass{\CurrentOption}{jlreq}}
\DeclareOption{dvips}{\PassOptionsToClass{\CurrentOption}{jlreq}}
\DeclareOption{dvipdfmx}{\PassOptionsToClass{\CurrentOption}{jlreq}}
\DeclareOption*{\PackageWarning{mdsposter}{Unknown option ‘\CurrentOption’}}

\ProcessOptions\relax

% 版面をしっかり設計
\LoadClass[jlreq_notes,
  paper=a0paper,baselineskip=1.5zh,
  jafontsize=10mm,jafontscale=.94,line_length=33zw,number_of_lines=65,
  column_gap=4zw,
  twocolumn
]{jlreq}

% \renewcommand{\kanjifamilydefault}{\gtdefault}

\setlength{\columnseprule}{.5mm}
\pagestyle{empty}

\AtEndDocument{
  \ifthenelse{\value{page} = 1}{}{
    \PackageWarning{mdsposter}{This document has \thepage pages.}%
  }
}

% 以下調整必須
\ModifyHeading{section}{
  lines=2,
  before_lines=1
}

\ModifyHeading{subsection}{
  before_lines=0
}

% 色を考える
\definecolor{My}{rgb}{0.54,0.19,0.88}

% なぜか中央にこない
\renewcommand{\maketitle}{%
\setlength{\fboxsep}{0pt}%
\twocolumn[%
\colorbox{My}{%
\color{white}%
\parbox{\textwidth}{%
\vspace{2\baselineskip}%
\begin{center}\Huge\@title\end{center}%
\vspace{\baselineskip}%
\begin{flushright}\Large\@author\end{flushright}%
}}\vspace{\baselineskip}]}
