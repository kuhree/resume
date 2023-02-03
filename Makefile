
input = resume.md
stylesheet = resume.css
outputDir = _site

all: pdf html

output: 
	@echo "Creating ${outputDir} dir"

	@mkdir -p ${outputDir}
	@cp ${stylesheet} ${outputDir}

html: output
	@echo "Creating HTML version of ${input}"

	@pandoc \
		${input} \
		-f markdown \
		-t html \
		-c ${stylesheet} \
		-s \
		-o ${outputDir}/index.html

pdf: output
	@echo "Creating PDF version of ${input}"

	@pandoc \
		${input} \
		-f markdown \
		-t pdf \
		--pdf-engine=wkhtmltopdf \
		-c ${stylesheet} \
		-s \
		-o ${outputDir}/resume.pdf
