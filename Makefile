GENERATED = \
	dissertation.aux \
	dissertation.log \
	dissertation.bbl \
	dissertation.blg \
	dissertation.pdf

all: dissertation.tex macros.sty bib.bib platzer.bib intro.bib
	pdflatex -halt-on-error dissertation
	bibtex dissertation
	pdflatex -halt-on-error dissertation
	pdflatex -halt-on-error dissertation

clean:
	rm -f $(GENERATED)

.PHONY: clean