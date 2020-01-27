FROM python:3.5

USER root

RUN pip install sphinxcontrib-confluencebuilder

CMD ["make", "confluence"]
