#!/usr/bin/env bash
set -euo pipefail
for pass in 1 2; do
  xelatex -interaction=nonstopmode -halt-on-error main.tex
done
biber main
xelatex -interaction=nonstopmode -halt-on-error main.tex
xelatex -interaction=nonstopmode -halt-on-error main.tex
