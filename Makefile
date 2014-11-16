RM = rm -f
LATEX_UF = latex -shell-escape UF-slide.tex

UF-slide.pdf: UF-slide.dvi
	dvipdfmx UF-slide.dvi

UF-slide.dvi: UF-slide.bbl
	$(LATEX_UF)
	$(LATEX_UF)

UF-slide.bbl:
	$(LATEX_UF)
	bibtex UF-slide
	$(RM) UF-slide.dvi

clean:
	$(RM) *.aux
	$(RM) *.bbl
	$(RM) *.blg
	$(RM) *.dvi
	$(RM) *.log
	$(RM) *.nav
	$(RM) *.out
	$(RM) *.pdf
	$(RM) *.snm
	$(RM) *.toc
