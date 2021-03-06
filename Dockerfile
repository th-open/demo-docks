FROM python:3-alpine
RUN apk add build-base
COPY ./mkdocs/ /mkdocs/
WORKDIR /mkdocs/
RUN pip install --upgrade pip && pip install mkdocs
RUN pip install mkdocs-bootswatch https://github.com/bmcorser/fontawesome-markdown/archive/master.zip
EXPOSE 8080
CMD ["mkdocs", "serve"]
