render:
	pandoc --standalone resume.md -t html -c style.css -o resume.html
	pandoc --standalone resume.md -t html --pdf-engine=wkhtmltopdf -V margin-top=0.15 -V margin-left=0.15 -V margin-right=0.15 -V margin-bottom=0.15 -V papersize=letter -c style.css -o resume.pdf
	pandoc --from markdown --to docx -o index.docx index.md
	pandoc --standalone --smart --from markdown --to plain -o index.txt index.md

html:
	pandoc --standalone resume.md -t html -c style.css -o resume.html

pdf:
	pandoc --standalone resume.md -t html --pdf-engine=wkhtmltopdf -V margin-top=0.15 -V margin-left=0.15 -V margin-right=0.15 -V margin-bottom=0.15 -V papersize=letter -c style.css -o resume.pdf

docx:
	pandoc --from markdown --to docx -o resume.docx resume.md
