FROM python:3.6

USER root

RUN pip install \
  Sphinx==2.4.4 \
  sphinxcontrib-confluencebuilder \
  bai2 \
  pyyaml \
  recommonmark \
  m2r2

COPY entrypoint entrypoint

ENTRYPOINT ["/entrypoint"]
