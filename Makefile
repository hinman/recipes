%.pdf : %.tex
	latexmk -pdf $?
	latexmk -c

%.pdf : %.mom
	pdfmom $< > $@

clean :
	-rm *.pdf
