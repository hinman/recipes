%.pdf : %.tex
	latexmk -pdf $?
	latexmk -c

%.pdf : %.mom
	eqn -Tpdf $< | tbl | pdfmom > $@

clean :
	-rm *.pdf
