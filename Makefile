RM = rm -f
LATEX_UF = latex -shell-escape UF-slide.tex

UF-slide.pdf: UF-slide.dvi
	dvipdfmx UF-slide.dvi

UF-slide.dvi: UF-slide.bbl
	$(LATEX_UF)
	$(LATEX_UF)

UF-slide.bbl: refs.bib
	$(LATEX_UF)
	bibtex UF-slide
	$(RM) UF-slide.dvi

refs.bib:
	wget http://www.bibsonomy.org/bib/user/t.uemura
	mv t.uemura refs.bib

rebuild: clean UF-slide.pdf

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
	$(RM) refs.bib
