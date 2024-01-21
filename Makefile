# makefile for compilation of the thesis
# (c) 2024 Damian Sova
#===========================================

CO=masters-thesis-damian-sova

all: $(CO).pdf

pdf: $(CO).pdf

$(CO).ps: $(CO).dvi
	dvips $(CO)

$(CO).pdf: clean
	context $(CO).tex

$(CO).dvi: $(CO).tex $(CO).bib
	context $(CO).tex

clean:
	rm -f *.log $(CO).tuc
	rm -f $(CO).pdf
	rm -f *~

pack:
	tar czvf $(CO).tar.gz .tex .bib .bst ./figures/ ./citations/ ./chapters/ ./assignment/ $(CO).pdf Makefile

vlna:
	vlna -l $(CO).tex

