%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                 Copyright Howard Beck @ 2024                      %
%                                                                   %
% Made for the Association of Student Activities (ASA) at the       %
% Massachusetts Institute of Technology (MIT).                      %
%                                                                   %
% Free for use by the ASA, ASA-recognized clubs, and                %
% collections of students at MIT trying to become an ASA-recognized %
% club (ASA Organizations).                                         %
%                                                                   %
% This software may not be published or distributed except by the   %
% copyright holder or by the executive board of the ASA.            %
%                                                                   %
% Further, do not sublicense and/or sell copies of the software,    %
% and do not employ it for commercial use.                          %
%                                                                   %
% Permission is granted to ASA organizations to freely modify       %
% any part of this code for their own use, as long as the copyright %
% notice here is kept in tact, and under the previous conditions.   %
%                                                                   %
% Permission is also granted to the executive board ASA to          %
% distribute modified copies of this code (subject to the above     %
% restrictions), that may contain different copyrights, so long as  %
% the following is included:                                        %
%    Based on code written by Howard Beck, MIT Class of 2025        %
%                                                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{constitution}[01/07/2024 Association of Student Activities Constitution Template]

\LoadClass[12pt]{article}

\RequirePackage{./ASA-TeX/imports}
\RequirePackage{./ASA-TeX/config}
\RequirePackage{./ASA-TeX/redefs}
\RequirePackage{./ASA-TeX/arrays}
\RequirePackage{./ASA-TeX/sections}

\AtEndPreamble{
    %%% Configuration variables
    \@ifundefined{groupname}
    {
        \ClassError{constitution}{%
            Please specify groupname BEFORE \protect\begin{document}. For example, use:\MessageBreak
            \def\protect\groupname{[GROUP NAME HERE]}\MessageBreak
            ...\MessageBreak
            \protect\begin{document}
        }{}
        \def\groupname{[GROUP NAME HERE]}
    }
    {}

    \let\@oldgroupname\groupname
    \def\groupname{\@oldgroupname\xspace}

    \hypersetup{
        colorlinks = true,
        urlcolor = urlred,
        linkcolor = linkblue,
        pdftitle={\groupname \doctype},
        pdfauthor={\groupname},
        pdfnewwindow=true,
    }
}

\newcommand{\moiralist}[1]{\href{https://groups.mit.edu/webmoira/list/#1}{#1@mit.edu}}
\newcommand{\mailmanlist}[1]{\href{https://mailman.mit.edu:444/mailman/admin/#1}{#1@mit.edu}}
\newcommand{\mailto}[1]{\href{mailto:#1}{#1}}

\newcommand{\officer}[1]{%
    %\addcontentsline{toc}{\nextsecdepth}{#1}%
    \hyperref[officer:#1]{\textbf{#1}}%
    \label{officer:#1}%
}