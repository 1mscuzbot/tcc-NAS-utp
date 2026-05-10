BIBTEX ?= bibtex.original

.PHONY: all clean distclean

MAIN=trabalho

all:
	pdflatex -interaction=nonstopmode $(MAIN).tex
	$(BIBTEX) $(MAIN)
	pdflatex -interaction=nonstopmode $(MAIN).tex
	pdflatex -interaction=nonstopmode $(MAIN).tex

clean:
	rm -f *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.idx *.ilg *.ind *.lof *.log *.lot *.out *.toc *.acn *.acr *.alg *.glg *.glo *.gls *.ist *.lol *.loa *.loc *.los *.synctex.gz *.nav *.snm *.vrb


distclean: clean
	rm -f $(MAIN).pdf
