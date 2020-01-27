publish-confluence
==================

Github action that can be used to publish to confluence. This action is a thin
wrapper around the `confluencebuilder`_ sphinx builder. It assumes that sphinx 
settings have been correctly setup, but allows the specification of secret 
values via inputs.

This action is meant to be used e.g. in a Github repo where you may want to 
publish to your confluence instance on merging to master.

See the `action.yaml`_ file for details of required inputs.

.. _`action.yaml`: action.yaml

Prerequisites
-------------

* Github repo is setup with `confluencebuilder`_ to publish to confluence on 
  ``make confluence`` when run locally 


Example usage
-------------

.. code:: yaml

  uses: actions/publish-confluence@v1
  with:
    atlassian-username: ${{ secrets.atlassianUsername }}
    atlassian-apitoken: ${{ secrets.atlassianApitoken }}

.. _confluencebuilder: https://github.com/sphinx-contrib/confluencebuilder
