.. include:: ../_header.rst
   
.. highlight:: bash

Project configuration
---------------------

Any folder is a valid |PhaserEditor|_ project. However, it is convenient to create a ``phasereditor2d.config.json`` project configuration file, it the root of the project's folder.

Every |PhaserEditor|_'s project template contains this file so probably you don't have to create it yourself.

These are the settings supported by the project configuration:

.. csv-table::
 :header: "Name", "Value"
 :widths: 1, 4

 "``skip``", "An array with the patterns for `filtering the project resources <resources-filtering.html>`_."
 "``plugins``", "An array with the path to `user plugins <plugins.html>`_."
 "``flags``", "An array with the `server options <server-options.html>`_."
 "``playUrl``", "A string with the address to open in the browser when you execute a Play command (``F12`` or ``F10``)."


This is an example:

 .. code::

    {
        "skip": ["dist/", "editor-plugins/"],
        "plugins":
            [
                "editor-plugins/my-fonts-plugins",
                "editor-plugins/my-awesome-plugins"
            ],
        "flags": ["-port", "7171", "-disable-gzip"],
        "playUrl": "http://localhost:4200"        
    }