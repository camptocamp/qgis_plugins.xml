QGIS plugins.xml
================

Create the plugins.xml for the plugin(s) in a folder.

Usage
-----

.. code:: bash

   qgis-plugins.xml --help

Example use in a folder:

.. code:: bash

   qgis-plugins.xml ../qgis_plugins_repository https://example.com/qgis_plugins/

Will create a `../qgis_plugins_repository/plugins.xml` including content of all
`*.txt` in `../qgis_plugins_repository` directory tree.

Example use with a zip file:

.. code:: bash

   qgis-plugins.xml myplugin.zip https://example.com/qgis_plugins/

Will create a `./plugin.xml` file including the content of the `./metadata.txt` file.

Development
-----------

.. code:: bash

   make install
   .venv/bin/qgis-plugins.xml --help
