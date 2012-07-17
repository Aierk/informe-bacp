DOC   = bacp2012-ga-smorales

all: images $(DOC).pdf

images: 
	make -C images all

clean:
	rm -f *.{aux,bbl,blg,dvi,lof,log,lot,out,toc}
	make -C images clean

distclean: clean
	rm -f $(DOC).pdf

.PHONY: all images clean distclean

%.pdf: %.tex *.tex *.bib
	pdflatex -halt-on-error $<
	BIBINPUTS=. bibtex $(DOC)
	pdflatex -halt-on-error $<
	pdflatex -halt-on-error $<

