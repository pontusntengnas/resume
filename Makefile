all:
	cd src && pdflatex -jobname=pontus_tengnas_letter_resume "\def\all{}\input{main.tex}"

letter:
	cd src && pdflatex -jobname=pontus_tengnas_letter "\def\letter{}\input{main.tex}"

resume:
	cd src && pdflatex -jobname=pontus_tengnas_resume "\def\resume{}\input{main.tex}"

clean:
	cd src && rm -rf *.gz *.pdf *.aux *.fls *.log *.fdb_latexmk