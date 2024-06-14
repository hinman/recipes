%.pdf : %.tex
	latexmk -pdf $?
	latexmk -c

%.pdf : %.mom
	pdfmom $< -et > $@

clean :
	-rm *.pdf
