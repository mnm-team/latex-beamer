## Location of Pandoc support files.
# PREFIX = $(HOME)/.pandoc

## MAIN File
MAIN = lmu-example.md

## Location of your working bibliography file
BIB = lmu-example.bib

TEMPLATE = templates/pandoc.tex

## PDF Engine, only for Tex Files
LATEX = lualatex

PDF=$(MAIN:.md=.pdf)
TEX=$(MAIN:.md=.tex)

$(PDF): $(TEX)
	latexmk -silent -$(LATEX) $(TEX)

verbose: $(TEX)
	latexmk -$(LATEX) $(TEX)

$(TEX): $(MAIN) $(BIB) $(TEMPLATE)
	pandoc --template $(TEMPLATE) \
 	--biblatex --listings \
	--pdf-engine=$(LATEX) \
	--bibliography $(BIB) \
	-o $@ -t beamer $<

clean:
	latexmk -c $(TEX)

veryclean: clean
	latexmk -CA $(TEX)

help :
	@echo ""
	@echo "This Makefile creates various outputs using pandoc"
	@echo "  make $(TEX)      : Generate TEX"
	@echo "  make $(PDFS)     : Generate PDF"
	@echo "  make $(HTML)     : Generate HTML"
	@echo ""


.PHONY: clean veryclean help

#%.pdf: %.md $(BIB) $(TEMPLATE)
#	pandoc \
#		--toc \
#		--top-level-division=chapter \
#		--number-sections \
#		--bibliography=$(BIB) --bibliography=$(MYPUBS) \
#		--filter pandoc-crossref -M cref=true \
#		--filter pandoc-citeproc --csl=./csl/$(CSL).csl \
#		--template $(TEMPLATE) \
#		-o $@ $<
