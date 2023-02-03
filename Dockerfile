FROM ghcr.io/surnet/alpine-wkhtmltopdf:3.17.0-0.12.6-full as builder
WORKDIR /data/app

COPY resume.* Makefile ./

RUN apk add --update --no-cache curl pandoc make \
  xvfb \
  ttf-dejavu ttf-droid ttf-freefont ttf-liberation

RUN make html

FROM ubuntu as runner
WORKDIR /var/www/html

RUN apt-get update
RUN apt-get install nginx -y

COPY --from=builder /data/app/_site/ ./

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
