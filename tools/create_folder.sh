#!/bin/bash

# Takes three arguments, the folder name, subtitle, and type

# Check if folder name, subtitle, and type are specified
if [ $# -ne 3 ]; then
    echo "Usage: $0 folder_name subtitle type"
    exit 1
fi

# type can only be lecture or slides
if [ "$3" != "lecture" ] && [ "$3" != "slides" ]; then
    echo "Type can only be lecture or slides"
    exit 1
fi

# Create folder and subfolders
mkdir -p "$1/tex"
mkdir -p "$1/css"

# Create .Rmd file with preamble

if [ "$3" = "lecture" ]; then

cp 10-regression/css/*.css "$1/css"
cp 10-regression/tex/*.tex "$1/tex"

echo "---
title: "Big Data and Economics"
subtitle: "$2"
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
elif [ "$3" = "slides" ]; then

cp 01-intro/ou-colors.css "$1/css"



echo "---
---
title: "Big Data and Economics"
subtitle: "$2"
author: "Kyle Coombs"
date: \"Bates College | [ECON/DCS 368](https://github.com/ECON368-fall2023-big-data-and-economics)\"
output:
  xaringan::moon_reader:
    css: [default, metropolis, metropolis-fonts,css/ou-colors.css] 
    lib_dir: libs
    nature:
      highlightStyle: github
      highlightLines: true
      highlightSpans: true
      countIncrementalSlides: false
---
name: toc

\`\`\`{css, echo=FALSE}
@media print {
  .has-continuation {
    display: block !important;
  }
}
\`\`\`

\`\`\`{r setup, include=FALSE}
options(htmltools.dir.version = FALSE)
library(knitr)
opts_chunk$set(
  fig.align=\"center\", fig.width=6, fig.height=4, 
  # out.width=\"748px\", #out.length=\"520.75px\",
  dpi=300, #fig.path='Figs/',
  cache=T#, echo=F, warning=F, message=F
  )

library(tidyverse)
\`\`\`

# Table of contents

---
class: inverse, center, middle

# Next lecture: 
<html><div style='float:left'></div><hr color='#EB811B' size=1px width=796px></html>

\`\`\`{r gen_pdf, include = FALSE, cache = FALSE, eval = TRUE}
infile=knitr::current_input() %>% str_replace(\".Rmd\", \".html\")
#infile = list.files(pattern = '.html')
pagedown::chrome_print(input = infile, timeout = 100)
\`\`\`

" > "$1/$1.Rmd"
fi