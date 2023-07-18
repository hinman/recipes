%.pdf : %.tex
	latexmk -pdf $?
	latexmk -c

%.pdf : %.mom
	tbl $< | pdfmom > $@

clean :
	-rm *.pdf
