default: compile
	
all: clean compile

compile:
	pdflatex   thesis-main.tex
	bibtex thesis-main	
	pdflatex   thesis-main.tex
	pdflatex   thesis-main.tex
	 
	
	rm -f *.aux
	rm -f *.log
	rm -f *.lof
	rm -f *.mf
	rm -f *.out
	rm -f *.bbl
	rm -f *.blg
	rm -f *.lot
	rm -f *.toc
	rm -f *.bib~

	evince thesis-main.pdf

clean:
	rm -f thesis-main.pdf



#clean: 	
	