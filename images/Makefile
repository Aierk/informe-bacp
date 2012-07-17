%.pdf: %.eps
	epstopdf --outfile=$@  $<
	
all: ga.pdf

clean:
	rm -f *.pdf
	
.PHONY: all clean
