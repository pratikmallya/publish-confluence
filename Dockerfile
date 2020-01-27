FROM python:3.5

RUN pip install sphinxcontrib-confluencebuilder

COPY . .

ENTRYPOINT ["/entrypoint"]
