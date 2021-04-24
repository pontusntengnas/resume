cleanAndMoveToDist = rm *.aux *.log && mv *.pdf ../dist

all:
	cd src && pdflatex -jobname=pontus_tengnas_letter_resume "\def\all{}\input{main.tex}" && $(cleanAndMoveToDist)

letter:
	cd src && pdflatex -jobname=pontus_tengnas_letter "\def\letter{}\input{main.tex}" && $(cleanAndMoveToDist)

resume:
	cd src && pdflatex -jobname=pontus_tengnas_resume "\def\resume{}\input{main.tex}" && $(cleanAndMoveToDist)

clean:
	cd src && rm -rf *.gz *.pdf *.aux *.fls *.log *.fdb_latexmk *.out __latexindent_temp.tex
