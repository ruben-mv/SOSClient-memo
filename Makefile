all: traballo caratula

traballo:
	pdflatex -shell-escape traballo
	#makeindex ${FICHERO_TEX}.idx
	bibtex traballo
	pdflatex -shell-escape traballo
	pdflatex -shell-escape traballo
	cp traballo.pdf release/

presentacion:
	pdflatex presentacion
	pdflatex presentacion
	cp presentacion.pdf release/

caratula:
	pdflatex caratula
	pdflatex caratula
	cp caratula.pdf release/

clean:
	ls traballo.* | grep -v \.tex$ | xargs rm
	#ls presentacion.* | grep -v \.tex$ | xargs rm
	ls caratula.* | grep -v \.tex$ | xargs rm
	rm -Rf *log *lot *lof *aux *toc *pdf *blg *bbl *bak *~
	cd capitulos && rm -Rf *log *lot *lof *aux *toc *pdf *blg *bbl *bak *~
	rm images/*-eps-converted-to.pdf 
