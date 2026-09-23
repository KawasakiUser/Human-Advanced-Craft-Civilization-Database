# Human Advanced Craft Civilization Database — ElegantPaper edition

This version uses the official `ElegantPaper` article class as its journal-style foundation, with bilingual XeLaTeX support.

## Build

```bash
xelatex -interaction=nonstopmode -halt-on-error main.tex
biber main
xelatex -interaction=nonstopmode -halt-on-error main.tex
xelatex -interaction=nonstopmode -halt-on-error main.tex
```

The source includes the class file locally, so the project does not depend on a global ElegantPaper installation. Chinese text is enabled with `xeCJK`; the font setup prefers Noto CJK and falls back to CTeX fonts.

## Automatic bug handling included

- Local `elegantpaper.cls` is included.
- Font fallback is used when TeX Gyre or Noto fonts are unavailable.
- The original book hierarchy is converted to journal-style sections.
- Information boxes are redefined locally with `tcolorbox`.
- Bilingual English/Chinese abstract structure is included.
- The build command runs multiple passes for references and table of contents.
