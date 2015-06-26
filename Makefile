all: traballo presentacion caratula

traballo:
	pdflatex traballo
	#makeindex ${FICHERO_TEX}.idx
	bibtex traballo
	pdflatex traballo
	pdflatex traballo

presentacion:
	pdflatex presentacion
	pdflatex presentacion

caratula:
	pdflatex caratula
	pdflatex caratula

clean:
	ls traballo.* | grep -v \.tex$ | xargs rm
	#ls presentacion.* | grep -v \.tex$ | xargs rm
	#ls caratula.* | grep -v \.tex$ | xargs rm
	rm -Rf *log *lot *lof *aux *toc *pdf *blg *bbl *~
	cd capitulos && rm -Rf *log *lot *lof *aux *toc *pdf *blg *bbl *~
	rm images/*-eps-converted-to.pdf 
