\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{article_modified}[2018/04/28]
\LoadClassWithOptions{article}

%Packages
%\RequirePackage[ngerman=ngerman-x-latest]{hyphsubst}
\RequirePackage{lmodern}	% schärfere Fonts
\RequirePackage[T1]{fontenc}	% Umlaute
\RequirePackage[utf8]{inputenc} % UTF8
%\RequirePackage[english]{babel}	% Anpassungen an Deutsch
\RequirePackage{graphicx}	% Bilder einbinden
\RequirePackage{wrapfig}		% Bilder/Tabellen von Text umflossen
\RequirePackage{caption}		% Beschriftung von Bildern
\RequirePackage{subcaption}	% Bildunterschrift für mehrere Bilder nebeneinander
\RequirePackage{url}		% URLs kenntlich machen
\RequirePackage[sorting=none]{biblatex}
\RequirePackage{float}		% Platzierung von Bildern angeben
\RequirePackage{listings}		% Quellcode
\RequirePackage{color}		% Farben definieren
\RequirePackage{longtable}	% Tabellen über mehrere Seiten
\RequirePackage{multirow}	% mehrere Zeilen einer Tabelle zusammenfassen
\RequirePackage[
	colorlinks=true,
	urlcolor=black,
	linkcolor=black,
	citecolor= black
]{hyperref}

% Vermeidung von Schusterjungen und Hurenkindern
\clubpenalty=10000
\widowpenalty=10000

% Listings für JS und TS
\definecolor{mygreen}{rgb}{0,0.6,0}
\definecolor{mygray}{rgb}{0.5,0.5,0.5}
\definecolor{mymauve}{rgb}{0.58,0,0.82}
\definecolor{keywordColor}{rgb}{0,0,0.52}
\definecolor{keywordViolett}{rgb}{0.4,0.05,0.48}
\definecolor{stringColor}{rgb}{0,0.50,0}
\definecolor{greyishblue}{rgb}{0.27,0.51,0.51}
\definecolor{mudyellow}{rgb}{0.48, 0.48, 0.26}

\lstdefinelanguage{JavaScript}{
	alsoletter={.},
	keywords={this, new, true, false, null, function, return, var, if, else},
	keywordstyle=\color{keywordColor}\bfseries,
	morekeywords={[2]{.feature, OpenLayers, Popup, Anchored, geometry, attributes, Size, Pixel}},
	keywordstyle={[2]{\color{keywordViolett}}},
	stringstyle=\color{stringColor},
	morestring=[b]',
	morestring=[b]",
	comment=[l]{//},
	commentstyle=\color{mygray}	
}

\lstdefinelanguage{TypeScript}{
	keywords={this, new, true, false, null, function, return, var, if, else, import, from, let, const, async, await, export, class, get, private},
	keywordstyle=\color{keywordColor}\bfseries,
	morekeywords={[2]{describe, beforeAll, it, expect,}},
	keywordstyle={[2]{\itshape}},
	morekeywords={[3]{browser, protractor, ExpectedConditions, element, by}},
	keywordstyle={[3]{\color{greyishblue}}},
	stringstyle=\color{stringColor},
	morestring=[b]',
	morestring=[b]",
	comment=[l]{//},
	commentstyle=\color{mygray}
}

\lstdefinelanguage{confJS}{
	keywords={exports, config, require, specs, allScriptsTimeout, multiCapabilities, directConnect, baseUrl, framework, jasmineNodeOpts, showColors, defaultTimeoutInterval, spec, displayStacktrace, browser, project, driver},
	keywordstyle=\color{keywordViolett},
	morekeywords={[2]{const, true, function, new}},
	keywordstyle={[2]{\color{keywordColor}}},
	morekeywords={[3]{beforeLaunch, onPrepare}},
	keywordstyle={[3]{\color{mygray}}},
	morekeywords={[4]{print, addReporter, get, waitForAngularEnabled, manage, window, maximize}},
	keywordstyle={[4]{\color{mudyellow}}},
	morekeywords={[5]{SpecReporter}},
	keywordstyle={[5]{\color{greyishblue}}},
	morekeywords={[6]{getEnv, register}},
	keywordstyle={[6]{\itshape}},
	stringstyle=\color{stringColor},
	morestring=[b]',
	morestring=[b]"
}

\lstset{%
	basicstyle=\footnotesize\ttfamily,
	captionpos=b,
	breakatwhitespace=false,
	breaklines=true,
	%numbers=left, 
	%frame=L,
	%xleftmargin=\parindent,
	tabsize=2,
	showstringspaces=false,
	escapeinside={\%*}{*)},
	literate=
	{ä}{{\"a}}1	{ö}{{\"o}}1	{ü}{{\"u}}1
}