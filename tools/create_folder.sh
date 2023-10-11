#!/bin/bash

# Check if folder name and subtitle are specified
if [ $# -ne 2 ]; then
    echo "Usage: $0 folder_name subtitle"
    exit 1
fi

# Create folder and subfolders
mkdir -p "$1/tex"
mkdir -p "$1/css"

# Create .Rmd file with preamble
echo "---
title: "Big Data and Economics"
subtitle: "Regression analysis in R"
author:
  name: Kyle Coombs
  affiliation: Bates College | [DCS/ECON 368](https://github.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials)  
output:
  html_document:
    theme: journal
    highlight: haddock
    # code_folding: show
    toc: yes
    toc_depth: 4
    toc_float: yes
    keep_md: true
    keep_tex: false ## Change to true if want keep intermediate .tex file
    css: css/preamble.css ## For multi-col environments
  pdf_document:
    latex_engine: xelatex
    toc: true
    dev: cairo_pdf
    # fig_width: 7 ## Optional: Set default PDF figure width
    # fig_height: 6 ## Optional: Set default PDF figure height
    includes:
      in_header: tex/preamble.tex ## For multi-col environments
    extra_dependencies: ["float", "booktabs", "longtable"]
    pandoc_args:
        --template=tex/mytemplate.tex ## For affiliation field. See: https://bit.ly/2T191uZ
always_allow_html: true
urlcolor: blue
mainfont: cochineal
sansfont: Fira Sans
#monofont: Fira Code ## Although, see: https://tex.stackexchange.com/q/294362
## Automatically knit to both formats:
knit: (function(inputFile, encoding) {
 rmarkdown::render(inputFile, encoding = encoding, 
 output_format = 'all') 
 })
---

\`\`\`{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE, cache = TRUE, dpi=300)
\`\`\`


" > "$1/$1.Rmd"
