#!/bin/bash

MYFILENAME=book

pdflatex $MYFILENAME.tex
biber $MYFILENAME.bcf
makeglossaries $MYFILENAME
makeindex $MYFILENAME-url
pdflatex $MYFILENAME.tex
pdflatex $MYFILENAME.tex
ls | grep -v ".tex" | grep -v *.sh | grep -v LICENSE | grep -v *.md | grep -v *.pdf | grep -v Chapters | grep -v Figs | xargs rm
