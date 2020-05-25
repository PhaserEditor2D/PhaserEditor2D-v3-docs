.. include:: ../_header.rst
   
.. highlight:: bash

Server options
--------------

To get the full list of options of the |PhaserEditor|_ server you can use the ``--help`` option. Here we explain them in detail.

.. code:: bash

    $ PhaserEditor2D --help
    
**-desktop**

Use this option if you are working with a local server:

* When you run the server, it automatically opens the default browser and the IDE.

* It allows the IDE to interact with local resources,
 like the File manager. See more in the `Files view <../workbench/files-view.html#context-menu>`_ chapter.

* It denies connections from external hosts.

**-disable-gzip**

By default, the server gzip compresses the files sent over the network. It requires an extra usage of the CPU, so you may disable it if you want to use less CPU in the server machine.

**-disable-check-for-updates**

When the server starts it connects with the updates server and checks for the latest released version. If there is a new version it prints a message with the new version and a short description of the new changes.

You can disable this function.

**-disable-open-browser**

If you don't want to open the default browser when running the server with the **-desktop** option.

**-editor string**

In the installation folder of |PhaserEditor|_ there is the ``editor`` folder. It contains the code of the IDE. If you want to load other implementation of the IDE, you can use the ``-editor /other/editor/implementation`` option. This is useful for testing or developing a different version of the IDE.

**-templates string**

In the installation folder of |PhaserEditor|_ there is the ``templates`` folder. It contains the project templates used in the IDE. If you want to use other templates you can use the ``-templates /other/templates`` option.

**-enable-advanced-js-editor**

By default, the IDE provides a |JavaScriptEditor|_ with basic features. If you use this option, the IDE will load extra resources (like the Phaser_ TypeScript definition files) to provide a better coding experience. See the `Advanced JavaScript editing features <code-editor/js-editor-advanced-features.html>`_ chapter.

**-lickey string**

Use this option to unlock the editor: ``-lickey <valid-lic-key>``.

**-port int**

By default, the server uses the ``1959`` port for HTTP networking. You can use this option to change it.

**-ws string**

Use this option to change the workspace. By default, the server uses the ``<user-home>/PhaserEditor_Projects`` folder: ``-ws /path/to/my/workspace/``. See the `Projects <../workbench/projects.html>`_ chapter.