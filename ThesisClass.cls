\NeedsTeXFormat{LaTeX2e}
% Author: Vikas Gupta, Zhiwei, Jingnan 

\makeatletter

\LoadClass[10pt]{memoir}
%\LoadClass[10pt,twosides]{memoir}
% use showtrims to show the trims
%% REQUIRED INFORMATION


% Personal Information
\newcommand{\yourname}{Jingnan Jia}
\newcommand{\yourbirthplace}{Linfen, Shanxi, China in 1993}

% Defense related information
\newcommand{\defensedate}{dinsdag, 10 maart, 2024}
\newcommand{\defensetime}{11:15 }
\newcommand{\rector}{prof.mr. C.J.J.M. Stolker}

% Thesis related information
\newcommand{\yourisbn}{978-94-6155-067-5}
\newcommand{\yourpublisher}{Boekendeal.nl}
\newcommand{\yourpublishyear}{2024}
\newcommand{\yourascinumber}{406}
\newcommand{\yourthesistitle}{Automated analysis of chest CT for systemic sclerosis using deep learning}

\newcommand{\tblue}{\textcolor{blue}}
\newcommand{\tred}{\textcolor{red}}
\newcommand{\elastix}{\texttt{elastix}}
\newcommand{\transformix}{\texttt{transformix}}
\newcommand{\lsgrid}{\texttt{lsgrid}}
\newcommand{\vx}{\bm{x}}
\newcommand{\vy}{\bm{y}}
\newcommand{\vz}{\bm{z}}
\newcommand{\vt}{\bm{t}}
\newcommand{\vg}{\bm{g}}
\newcommand{\vu}{\bm{u}}
\newcommand{\vd}{\bm{d}}
\newcommand{\vp}{\bm{p}}
\newcommand{\vq}{\bm{q}}
\newcommand{\vP}{\bm{P}}
\newcommand{\vH}{\bm{H}}
\newcommand{\vs}{\bm{s}}
\newcommand{\vS}{\bm{S}}
\newcommand{\vux}{\bm{u}(\bm{x})}
\newcommand{\vmu}{\bm{\mu}}
\newcommand{\vF}{\bm{F}}
\newcommand{\vM}{\bm{M}}
\newcommand{\vJ}{\bm{J}}

\newcommand{\vI}{\bm{I}}
\newcommand{\vT}{\bm{T}}
\newcommand{\vTm}{\bm{T}_{\vmu}}
\newcommand{\vTx}{\bm{T}(\bm{x})}
\newcommand{\CC}{\mathcal{C}}

\newcommand{\est}{\mathrm{est}}
\newcommand{\pure}{\mathrm{pure}}
\newcommand{\total}{\mathrm{total}}
\newcommand{\iter}{\mathrm{iter}}
\newcommand{\vspaceabstract}{}
\newcommand{\vmuhat}{\widehat{\vmu}}
%% FORMATTING

% load packages
\RequirePackage{color} \RequirePackage{calc} \RequirePackage{soul}
\RequirePackage{fourier} \RequirePackage{wrapfig} \RequirePackage{thumbindex}

% color defs
\definecolor{nicered}{gray}{0.5}
\definecolor{shadecolor}{gray}{0.96}
\def\chapterfontcolors#1{%
	\def\chapter@font@color{#1}
}
\chapterfontcolors{black}

\newcommand{\tbf}{$<\text{to be filled}>$}


% TITLE PAGE
% ------------------

\def\makefirsttitle{%
	\pretitle{\begin{center}\Huge}
	\posttitle{\end{center}\vfil}
	%\preauthor{\begin{center}\LARGE}
	%\postauthor{\end{center}\thispagestyle{empty}\clearpage\vfil}
	\date{}
	\maketitle
}

\def\makesecondtitle#1#2{%
	\thispagestyle{empty}
	\begin{center}\begin{DoubleSpace}
	\Huge\thetitle \\
	\vfill
	\large{\bfseries Proefschrift} \\[\baselineskip]
	ter verkrijging van \\
	de graad van Doctor aan de Universiteit Leiden, \\
	op gezag van Rector Magnificus ~\rector, \\
	volgens besluit van het College voor Promoties \\
	te verdedigen op ~\defensedate \\
	klokke ~\defensetime uur \\
	\vfill
	door \\
	\vfill
	\yourname \\
	geboren te \yourbirthplace \\
	\end{DoubleSpace}\end{center}
	\clearpage
}

% COLOPHON PAGE
% --------------------------
\def\theisbn{\yourisbn}
\def\isbn#1{\gdef\theisbn{#1}}
\def\thepublisher{\yourpublisher}
\def\publisher#1{\gdef\thepublisher{#1}}
\def\thepublishedyear{\yourpublishyear}
\def\publishedyear#1{\gdef\thepublishedyear{#1}}

\def\makecolophon{%
	\thispagestyle{empty}
	\noindent{\bfseries\Large Colophon}
	\\[2\baselineskip] About the cover:
	\\[\baselineskip] \begin{tabular}{l}\scriptsize\noindent \raisebox{0.5\textwidth}{\begin{minipage}{0.95\textwidth}\noindent \noindent
The cover was designed from a tree photo taken in the Japanese Garden, Den Haag, which was made into lung-like shape. The front one is in gray, which looks like a vessel tree in medical images, and the back is in color, expressing the hope that patients suffering from diseases will recover to a colorful life. \\
\end{minipage}}\end{tabular}

	\vfill
	\noindent \thetitle \\ \theauthor \\
	\\[\baselineskip] ISBN: \theisbn
	\\ Thesis layout \& cover designed by \yourname
	\\ Printed by \thepublisher
	\\[\baselineskip]\copyright\ \thepublishedyear\ \theauthor, Leiden, the Netherlands
	\\ All rights reserved. No part of this publication may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying, recording, or any information storage and retrieval system, without permission in writing from the copyright owner.
	\clearpage
}



% PROMOTIE PAGE: Add your own committee
% -------------------------
\def\makepromotie{%
	\thispagestyle{empty}
	\begin{tabular}{l l}
	Promotor: & Prof. dr. ir. B. P. F. Lelieveldt \\ & \\

	Co-promotor: & Dr. ir. B. C. Stoel \\ & Dr. ir. M. Staring \\ & \\


	Leden promotiecommissie: & Prof. dr. M. de Bruijne  \\
		           & \textit{Erasmus Medical Center, Rotterdam} \\
				   & Prof. dr. W. Kraaij  \\
		           %& \textit{Leiden University, Leiden} \\
		           & Prof. dr. P.E. Postmus   \\
		           %& \textit{Leiden University Medical Center, Leiden} \\


	\end{tabular}
	\vfill


% ASCI
\noindent \includegraphics[width=0.22\textwidth]{logo/asci.eps}  \\
\noindent The research in this thesis was performed at the Division of Image Processing (LKEB), Department of Radiology of Leiden University Medical Center, The Netherlands. \\
\noindent This work was carried out in the ASCI graduate school. ASCI
dissertation series number: \yourascinumber.
\\

%\noindent
%\begin{minipage}[l]{0.22\textwidth}
%\noindent \includegraphics[width=0.99\textwidth]{logo/asci.eps}
%\end{minipage}
%\begin{minipage}[l]{0.65\textwidth}
%\noindent This work was carried out in the ASCI graduate school. ASCI
%dissertation series number: \yourascinumber
%\end{minipage}



% SPONSORSHIP

\noindent Financial support for the publication of this thesis was kindly
provided by: \\
LKEB, \\ AIR fundation, \\ ASCI research school, \\  Boehringer Ingelheim bv, \\
Library of Leiden University, \\ Lung Foundation Netherlands. 


%\begin{itemize}
%\item China Scholorship Council (CSC),
%\item ASCI research school,
%\item Library of the University of Leiden.
%\end{itemize}

\clearpage }

% PAGE STYLES
% ---------------------

% Style for the chapter page
\newsavebox{\side@header@chapter}
\newcommand\side@header@chapter@marker[1][1cm]{%
	\sbox\side@header@chapter{%
		\resizebox{!}{#1}{\fboxsep=1pt%
			\colorbox{nicered}{\color{white}\bfseries\sffamily\thechapter}%
		}}
}
\def\side@header{%
	\null
}


% Common page style
\copypagestyle{page@style}{Ruled} \makeevenhead{page@style}{}{}{}
\makeoddhead{page@style}{}{}{} \makeheadrule{page@style}{\textwidth}{0pt}
%\makefootrule{page@style}{\textwidth}{0.5pt}{\footruleskip}
\makerunningwidth{page@style}{\textwidth} \pagestyle{page@style}

% Style for the first page of a chapter
\copypagestyle{firstchapter@style}{page@style}
\makeevenhead{firstchapter@style}{}{}{} \makeoddhead{firstchapter@style}{}{}{}
\makeheadrule{firstchapter@style}{0pt}{0pt}

% FOR CHAPTER PUBLICATION
% ------------------------------------------

\long\def\@chapterpub{\empty}

\def\publishedat#1{\vfill \noindent \textit{This chapter was adapted from:} \\ \\* \def\@chapterpub{\par\noindent #1}}

\def\notpublishedat#1{\def\@chapterpub{#1}}

\newcommand\makechapterpublications{%
	\thispagestyle{empty}
	\if\@chapterpub\empty
		\mbox{}
	\else
		\vfill
		%\parbox{\textwidth}{\small\@chapterpub}
		\parbox{\textwidth}{\small}
	\fi
	\clearpage
	\thispagestyle{firstchapter@style}
}

% CHAPTER FORMATTING
% ------------------------------------------

\newlength\dlf@normtxtw
\setlength\dlf@normtxtw{\textwidth}
\def\myhelvetfont{\def\sfdefault{mdput}}
\newsavebox{\feline@chapter}
\newlength{\feline@chapter@height}
\newcommand\feline@chapter@marker[1][4cm]{%
	\sbox\feline@chapter{%
		\resizebox{!}{#1}{\fboxsep=1pt%
			\color{\chapter@font@color}\bfseries\thechapter
		}}
	\setlength\feline@chapter@height{\depthof{\usebox{\feline@chapter}}}
	%\raisebox{-\feline@chapter@height}{\usebox{\feline@chapter}}%
	\raisebox{0pt}{\usebox{\feline@chapter}}%
	%\parbox{\textwidth}{\small\@chapterpub}
}
\newcommand\feline@chm[1][4cm]{%
	\sbox\feline@chapter{\feline@chapter@marker[#1]}%
	\makebox[0pt][l]{% aka \rlap
		\makebox[0cm][r]{\usebox\feline@chapter}%
	}}

\makechapterstyle{acko}{
 \renewcommand\chapnamefont{\emptyset}
 \renewcommand\chaptitlefont{\normalfont\huge\bfseries\scshape\color{\chapter@font@color}}
  \renewcommand\chapternamenum{}
  \renewcommand\printchaptername{}
  \renewcommand\printchapternum{}
   \renewcommand\printchaptertitle[1]{\chaptitlefont\raggedright ##1\par}
    \renewcommand\afterchaptertitle{\par\vskip\midchapskip\thispagestyle{empty}}
}

% Extra chapter style
\let\@orig@chapter=\chapter%
\def\chapter#1{%
	\ThumbIndexHide\ThumbCount=0
	\@orig@chapter{#1}
}

% ABSTRACT
% -------------------------------
\def\pre@abstract{\clearpage}
\def\post@abstract{%
	\makechapterpublications
	\clearpage
	\thispagestyle{firstchapter@style}
}

\renewenvironment{abstract}{%
	\pre@abstract%
	\begin{minipage}{\textwidth}%
	\vspace{0.5\baselineskip}
	\begin{center}\bfseries Abstract\end{center}
} {\end{minipage}\post@abstract}


\def\noabstract{%
	\clearpage
	\notpublishedat{\empty}
	\post@abstract


}

% TABLE CAPTION
% -------------------------------
\setlength{\abovecaptionskip}{\baselineskip}
\setlength{\belowcaptionskip}{0.5\baselineskip}
\long\def\@makecaption#1#2{%
  \small
  \vskip\abovecaptionskip
  \def\@tablabel{\textsc{#1}}
  \sbox\@tempboxa{\@tablabel: #2}%
  \ifdim \wd\@tempboxa > \hsize
  	\@tablabel: #2\par
  \else
  	\global \@minipagefalse
	\hb@xt@\hsize{\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\newcounter{subtable}


% TABLE OF CONTENTS
% -------------------------------
\settocdepth{subsection}

\renewcommand{\precistoctext}[1]{%
	{\leftskip \cftchapterindent\relax
	\advance\leftskip \cftchapternumwidth\relax
	\rightskip \@tocrmarg\relax
	\precistocfont \noindent\small #1\par}}

% FOR THUMB INDEXING
% ---------------------------------
\setlength\ThumbVSkip{\uppermargin}
\definecolor{thumbcolor}{gray}{0.9}
\definecolor{chapname}{gray}{0.4}
\def\@runningchaptertitle{}
\newcommand{\runningchaptertitle}[1]{\gdef\@runningchaptertitle{#1}\relax}
\ThumbIndexSetInfo{%
%{\color{thumbcolor}{\small\scshape\colorbox{gray}                    {\chaptername\ \thechapter } \color{chapname}\                       }}
 {\color{thumbcolor}{\small\scshape\colorbox{gray}{\parbox[b][9mm][b]{15mm}{\chaptername\ \thechapter}} \color{chapname}\  \@runningchaptertitle}}
 }
 %v20:{\parbox[b][3mm][b]{15mm}
 %v10:{\parbox[b][6mm][b]{15mm}
%v1\setlength{\ThumbInfoSkip}{0pt} \setlength\ThumbIndexXOffset{3mm}
%v2\setlength{\ThumbInfoSkip}{0pt} \setlength\ThumbIndexXOffset{0mm}
\setlength{\ThumbInfoSkip}{0pt} \setlength\ThumbIndexXOffset{7mm}
%\setlength{\ThumbInfoSkip}{0pt} \setlength\ThumbIndexXOffset{7.8mm}
\setlength\ThumbMarkerWidth{11mm} \setlength\ThumbMarkerHeight{15mm}
%v1,v2\setlength\ThumbMarkerWidth{6mm} \setlength\ThumbMarkerHeight{6mm}
%\setlength\ThumbMarkerWidth{1mm} \setlength\ThumbMarkerHeight{1mm}

% OTHERS
% ------------------------------------------
\setlength{\intextsep}{0pt} \setlength{\columnsep}{\baselineskip}
\setsecnumdepth{subsubsection}

\def\startwrap#1#2{\begin{wrapfigure}{#1}[-0.5\baselineskip]{#2}\vspace{-0.8\baselineskip}\begin{framed}}
\def\endwrap{\end{framed}\vspace{-0.8\baselineskip}\end{wrapfigure}}

\makeatother
