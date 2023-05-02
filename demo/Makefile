MAINTEX 	:= lmu-example.tex

.PHONY : default help pdf verbose clean veryclean

default :
	latexmk -pdflua -quiet $(MAINTEX)

help :
	@echo ""
	@echo "This Makefile creates the PDF using 'latexmk'"
	@echo "  make             : Generate PDF"
	@echo "  make pdf         : Generate PDF (forced mode)"
	@echo "  make verbose     : Show output from latex compiler"
	@echo "  make clean       : Delete temporary files"
	@echo "  make veryclean   : Delete temporary files including PDF"
	@echo ""

pdf:
	latexmk -pdflua -g $(MAINTEX)

verbose :
	latexmk -pdflua -g -verbose $(MAINTEX)

clean :
	latexmk -c
	rm -f *.lol *.aux *.bbl *.aux *.log *.nav *.out *.snm *.toc *.vrb *.auxlock

veryclean : clean
	latexmk -CA

