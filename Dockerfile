FROM dldl/sphinx-server:latest

RUN pip install sphinxcontrib-confluencebuilder

CMD ["make", "confluence"]
