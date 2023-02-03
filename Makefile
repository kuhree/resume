
input = resume.md
outputDir = _site # For Github pages
stylesheet = resume.css

all: pdf html

dist: 
	@echo "Creating ${outputDir} dir"

	mkdir -p ./${outputDir}
	cp ${stylesheet} ./${outputDir}

html: dist

	@echo "Creating HTML version of ${input}"

	@pandoc \
		${input} \
		-f markdown \
		-t html \
		-c ${stylesheet} \
		-s \
		-o ${outputDir}/index.html

pdf: dist
	
	@echo "Creating PDF version of ${input}"

	@pandoc \
		${input} \
		-f markdown \
		-t pdf \
		--pdf-engine=wkhtmltopdf \
		-c ${stylesheet} \
		-s \
		-o ${outputDir}/resume.pdf
