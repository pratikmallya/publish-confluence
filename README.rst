publish-confluence
==================

Github action that can be used to publish sphinx documents to confluence. 
This action is a thin wrapper around the `confluencebuilder`_ sphinx builder. 
It assumes that sphinx settings have been correctly setup, but allows the 
specification of secret values via inputs.

This action is meant to be used e.g. in a Github repo where you may want to 
publish to your confluence instance on merging to master.

See the `action.yaml`_ file for details of required inputs.

.. _`action.yaml`: action.yaml

Prerequisites
-------------

* Github repo is setup with `confluencebuilder`_ options to publish to 
  confluence on ``make confluence`` when run locally 


Example usage
-------------

The following is a fully functional `Github Workflow`_. Note that 
``atlassianUsername``  and ``atlassianApitoken`` are `Github secrets`_ that need 
to be added to the Github repo.

.. code:: yaml

  on: [push]
  jobs:
    publish_confluence:
      runs-on: ubuntu-latest
      name: Publish docs to confluence
      steps:
      - uses: actions/checkout@v1
      - uses: actions/setup-python@v1  # Only required if you have multiple python deps
        with:
          python-version: '3.x'
      - name: publish to confluence
        uses: pratikmallya/publish-confluence@master
        with:
          username: ${{ secrets.atlassianUsername }}
          apitoken: ${{ secrets.atlassianApitoken }}
          requirements_file: ${{ secrets.atlassianApitoken }}

.. _confluencebuilder: https://github.com/sphinx-contrib/confluencebuilder
.. _Github secrets: https://help.github.com/en/actions/automating-your-workflow-with-github-actions/creating-and-using-encrypted-secrets
.. _Github Workflow: https://help.github.com/en/actions/automating-your-workflow-with-github-actions/configuring-a-workflow
