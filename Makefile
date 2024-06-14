TARGETS := $(patsubst %.mom,%.pdf,$(wildcard *.mom))

all: $(TARGETS)

%.pdf : %.mom
	pdfmom $< -et > $@

clean :
	-rm *.pdf
