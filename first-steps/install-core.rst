.. include:: ../_header.rst
   
.. highlight:: bash


Install Phaser Editor 2D Core
=============================

You can install |core|_ using two main methods:

- Download it from the Phaser Editor 2D website.
- Install it using the Node Package Manager (NPM)

Getting Phaser Editor 2D Core from the Phaser Editor 2D website
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Download the ``PhaserEditor2D-core-<version>-<platform>.zip`` file for your platform from the `Downloads page <https://phasereditor2d.com/downloads>`_. 

Un-compress the downloaded file, open the terminal and run:

.. code::

    $ cd /path/to/downloaded/PhaserEditor2D
    $ ./PhaserEditor2D -project path/to/project

The server starts and opens the default browser in the address: ``http://127.0.0.1:1959/editor``.

The ``-project`` flag is mandatory, its value must be the path to the game project.

Check the `Create your first project <create-first-project.html>`_ section for creating a new game.

.. warning::

    In previous versions of the editor, there was the workspace concept. It allowed you to create new projects inside a workspace folder. It is not supported anymore, the editor's server only runs for a single project.

By default, the server runs in application-mode. It means it does its best on providing better integration with your OS:

    * It opens the default browser at the right URL (you can change it with the ``-browser-command`` option).
    * It allows launching third-party OS applications like Visual Studio Code or the file manager (Windows Explorer, macOS Finder, etc...).
    * It denies remote connections.
    
However, you can run the server in a remote host using the ``-public`` option:

.. code::

    $ ./PhaserEditor2D -public

It allows remote connections but disables all the OS integration described before.

`Learn more about all the command line options <../misc/server-options.html>`_

Getting Phaser Editor 2D Core from the NPM registry
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can install |core|_ globally in your system using |npm|_:

.. code::

    > npm install -g phasereditor2d-launcher

And you can run it in a terminal:

.. code::

    $ phasereditor2d-launcher -project path/to/project

The `phasereditor2d-launcher <https://www.npmjs.com/package/phasereditor2d-launcher>`_ script downloads the latest |core|_ version from the Phaser Editor 2D website and runs it. Next time, the script will use the downloaded editor. 

However, probably you would like to install ``phasereditor2d-launcher`` as a dependency of your project. Then do:

.. code::

    > npm install phasereditor2d-launcher --save-dev

And run it:

.. code::

    $ npx phasereditor2d-launcher -project .

If your project was created using one of the project templates provided by the |allInOne|_ distribution or downloaded from the `Phaser Editor 2D Start page <https://phasereditor2d.com/start>`_, then the editor is installed together with the other dependencies. Also, the ``package.json`` file contains the ``editor`` script for running the editor:

.. code::

    > npm run editor

`Learn more about the phasereditor2d-launcher module <https://www.npmjs.com/package/phasereditor2d-launcher>`_.