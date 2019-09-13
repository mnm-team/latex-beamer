MAINTEX 	:= lmu-example.tex

LATEX 		:= lualatex
FLAGS 		:= -quiet -shell-escape

.PHONY : default help pdf verbose clean veryclean

default :
	latexmk -$(LATEX) $(FLAGS) $(MAINTEX)

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
	latexmk -g -$(LATEX) $(FLAGS) $(MAINTEX)

verbose :
	latexmk -g -$(LATEX) $(FLAGS) -verbose $(MAINTEX)

clean :
	latexmk -c
	rm -f *.lol *.aux *.bbl *.aux *.log *.nav *.out *.snm *.toc *.vrb *.auxlock

veryclean : clean
	latexmk -CA

