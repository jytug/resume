.PHONY: clean

LATEX_SRC=$(wildcard /*.tex)

all: resume.pdf

%.pdf: %.tex
	rubber -s --pdf $<
	rubber-info --check $<

clean:
	rm -rf *.aux *.bbl *.blg *.log *.pdf *.toc *.snm *.out *.nav tags
