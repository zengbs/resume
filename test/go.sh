#!/bin/bash

filename=$(basename -- "$1")
extension="${filename##*.}"
filename="${filename%.*}"

#pdflatex -interaction=nonstopmode  ${filename}.tex
#bibtex ${filename}.aux
#pdflatex -interaction=nonstopmode ${filename}.tex
#pdflatex -interaction=nonstopmode ${filename}.tex


#rm -f  paper.aux paper.bbl paper.blg paper.log paper.out

pdflatex -shell-escape  ${filename}.tex
bibtex    ${filename}.aux
pdflatex -shell-escape ${filename}.tex
pdflatex -shell-escape ${filename}.tex
