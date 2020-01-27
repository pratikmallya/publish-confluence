FROM dldl/sphinx-server:latest

RUN pip install sphinxcontrib-confluencebuilder
COPY . .

ENTRYPOINT ["/entrypoint"]
