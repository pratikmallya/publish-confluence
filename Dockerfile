FROM python:3.5

WORKDIR /publish-confluence

USER root

RUN pip install sphinxcontrib-confluencebuilder

COPY . .

ENTRYPOINT ["/entrypoint"]
