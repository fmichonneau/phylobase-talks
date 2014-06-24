
all: ievobio-talk.md
	pandoc -t revealjs -s ievobio-talk.md -V theme=night -o ievobio-talk.html

ievobio-talk.md: ievobio-talk.Rmd
	Rscript -e "library(knitr); knit('ievobio-talk.Rmd');"
