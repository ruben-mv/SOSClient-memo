all: traballo presentacion caratula

traballo:
	latex traballo
	#makeindex ${FICHERO_TEX}.idx
	bibtex traballo
	pdflatex traballo
	pdflatex traballo

presentacion:
	pdflatex presentacion.tex
	pdflatex presentacion.tex

caratula:
	pdflatex caratula.tex
	pdflatex caratula.tex

clean:
	ls traballo.* | grep -v \.tex$ | xargs rm
	#ls presentacion.* | grep -v \.tex$ | xargs rm
	#ls caratula.* | grep -v \.tex$ | xargs rm
	rm -Rf *log *lot *lof *aux *toc *pdf *blg *bbl *~

