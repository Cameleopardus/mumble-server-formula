mumble-server
=======
Install and configure a mumble-server instance.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``mumble-server``
-----------

Installs the ``mumble-server`` server package and service.

``mumble-server.config``
------------------

Installs the mumble-server configuration file included in this formula
(under "mumble-server/files"). This configuration file is populated
by values from pillar. ``pillar.example`` results in the generation
of the default ``mumble-server.ini`` file on Ubuntu 14.04 Trusty Tahr .