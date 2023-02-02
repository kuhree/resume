
input = resume.md
stylesheet = resume.css

all: pdf html

dist: 
	@echo "Creating dist dir"

	mkdir -p ./dist
	cp ${stylesheet} ./dist/${stylesheet}

html: dist

	@echo "Creating HTML version of ${input}"

	@pandoc \
		${input} \
		-f markdown \
		-t html \
		-c ${stylesheet} \
		-s \
		-o dist/index.html

pdf: dist
	
	@echo "Creating PDF version of ${input}"

	@pandoc \
		${input} \
		-f markdown \
		-t pdf \
		--pdf-engine=wkhtmltopdf \
		-c ${stylesheet} \
		-s \
		-o dist/resume.pdf
