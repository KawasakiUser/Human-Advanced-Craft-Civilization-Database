#!/usr/bin/env bash
set -euo pipefail
# Two XeLaTeX passes are sufficient until citations are added.
xelatex -interaction=nonstopmode -halt-on-error main.tex
xelatex -interaction=nonstopmode -halt-on-error main.tex
