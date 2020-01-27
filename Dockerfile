FROM python:3.5-alpine3.10

RUN pip install sphinxcontrib-confluencebuilder
RUN apk add --update alpine-sdk

COPY . .

ENTRYPOINT ["/entrypoint"]
