.SUFFIXES: .tex .dvi .pdf

all:
	platex main.tex
	pbibtex main
	platex main.tex
	dvipdfmx main.dvi

clean:
	rm -rf *.aux *.dvi *.log

.tex.dvi:
	platex -kanji=euc $<

.dvi.pdf:
	dvipdfmx $<

sample.pdf: sample.tex sample.dvi
