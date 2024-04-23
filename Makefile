# makefile for compilation of the thesis
# (c) 2024 Damian Sova
#===========================================

CO=masters-thesis-damian-sova
CAPTERS=chapters/introduction.tex chapters/theoretical_foundations.tex chapters/practical_part.tex chapters/conclusion.tex

all: $(CO).tex
	context $(CO).tex

clean:
	rm -f *.log $(CO).tuc
	rm -f *.vimout
	rm -f *~
	rm -f */*~

pack:
	tar czvf $(CO).tar.gz .tex .bib .bst ./figures/ ./references/ ./source-codes/ ./chapters/ ./assignment/ $(CO).pdf Makefile

vlna:
	vlna -l $(CO).tex $(CAPTERS)

