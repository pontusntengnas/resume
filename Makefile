all:
	cd src && pdflatex "\def\all{}\input{main.tex}"

letter:
	cd src && pdflatex "\def\letter{}\input{main.tex}"

resume:
	cd src && pdflatex "\def\resume{}\input{main.tex}"

clean:
	cd src && rm -rf *.gz *.pdf *.aux *.fls *.log *.fdb_latexmk