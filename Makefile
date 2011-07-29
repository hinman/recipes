%.pdf : %.tex
	latexmk -pdf $?
	latexmk -c

clean :
	-rm *.pdf