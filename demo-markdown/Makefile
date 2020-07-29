## MAIN File
MAIN = lmu-example.md

## Location of your working bibliography file
BIB = lmu-example.bib

TEMPLATE = templates/pandoc.tex

PDF=$(MAIN:.md=.pdf)
TEX=$(MAIN:.md=.tex)

$(PDF): $(TEX)
	latexmk -silent $(TEX)

verbose: $(TEX)
	latexmk  $(TEX)

$(TEX): $(MAIN) $(BIB) $(TEMPLATE)
	pandoc --template $(TEMPLATE) \
	--biblatex --listings \
	--from markdown-auto_identifiers \
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
	@echo "  make $(PDF)     : Generate PDF"
	@echo ""


.PHONY: clean veryclean help

