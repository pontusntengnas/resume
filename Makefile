all:
	cd src && pdflatex -jobname=pontus_tengnas_letter_resume "\def\all{}\input{main.tex}" && rm *.aux *.log

letter:
	cd src && pdflatex -jobname=pontus_tengnas_letter "\def\letter{}\input{main.tex}" && rm *.aux *.log

resume:
	cd src && pdflatex -jobname=pontus_tengnas_resume "\def\resume{}\input{main.tex}" && rm *.aux *.log

clean:
	cd src && rm -rf *.gz *.pdf *.aux *.fls *.log *.fdb_latexmk