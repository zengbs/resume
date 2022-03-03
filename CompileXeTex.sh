#!/bin/bash

filename=$(basename -- "$1")
extension="${filename##*.}"
filename="${filename%.*}"

#pdflatex -interaction=nonstopmode  ${filename}.tex
#bibtex ${filename}.aux
#pdflatex -interaction=nonstopmode ${filename}.tex
#pdflatex -interaction=nonstopmode ${filename}.tex


#rm -f  paper.aux paper.bbl paper.blg paper.log paper.out

#xelatex -shell-escape  ${filename}.tex
#bibtex    ${filename}.aux
#xelatex -shell-escape ${filename}.tex
#xelatex -shell-escape ${filename}.tex

rm *.aux
rm *.bbl
rm *.blg
rm *.log
rm *.out

lualatex -shell-escape  ${filename}.tex
bibtex    ${filename}.aux
lualatex -shell-escape ${filename}.tex
lualatex -shell-escape ${filename}.tex
