.. include:: ../_header.rst
   
.. highlight:: bash

Server options
--------------

To get the full list of options of the |PhaserEditor|_ server you can use the ``--help`` option. Here we explain them in detail.

.. code:: bash

    $ PhaserEditor2D --help

Following, 
    
**-public**

By default, the editor starts as a local application. It allows you to execute third-party tools like |VSCode|_ or the File Manager and opens the default web browser automatically at the startup.

However, you may want to execute the server in a remote machine. To do this, you have to use the ``-public`` option. when it is set, the server allows remote connections and disables all the integration with the remote host applications.

**-disable-gzip**

By default, the server gzip compresses the files sent over the network. It requires an extra usage of the CPU, so you may disable it if you want to use less CPU in the server machine.

**-disable-check-for-updates**

When the server starts it connects with the updates server and checks for the latest released version. If there is a new version it prints a message with the new version and a short description of the new changes.

You can disable this function.

**-disable-open-browser**

If you don't want to open the default browser at the server startup. Not needed if you run the server with the ``-public`` option.

**-browser-command**

When the server starts it opens the default browser of the OS. If you want it to launch a different browser, you can use the **-browser-command** option:

.. code::

    $ PhaserEditor2D -browser-command "/path/to/firefox $URL"

In the above command, the server will start firefox. Note the ``$URL`` variable is replaced by the URL of the editor.

We recommend using Google Chrome. It has an application mode that runs the editor similar to a desktop application. Try running the editor like this:

.. code::

    $ PhaserEditor2D -browser-command '/path/to/google-chrome "--app=$URL"'

**-editor string**

In the installation folder of |PhaserEditor|_ there is the ``editor`` folder. It contains the code of the IDE. If you want to load other implementation of the IDE, you can use the ``-editor /other/editor/implementation`` option. This is useful for testing or developing a different version of the IDE.

**-templates string**

In the installation folder of |PhaserEditor|_ there is the ``templates`` folder. It contains the project templates used in the IDE. If you want to use other templates you can use the ``-templates /other/templates`` option.

**-disable-advanced-js-editor**

By default, the IDE provides a |JavaScriptEditor|_ with advanced features like code completion across multiple files. The auto-completion engine consumes "a lot" of resources in terms of network requests and CPU. For this reason, if you are using a third-party code editor like |VSCode|_ then you can disable the engine using this option.

**-lickey string**

Use this option to unlock the editor: ``-lickey <valid-lic-key>``.

**-port int**

By default, the server uses the ``1959`` port for HTTP networking. You can use this option to change it.

**-ws string**

Use this option to change the workspace. By default, the server uses the ``<user-home>/PhaserEditor_Projects`` folder: ``-ws /path/to/my/workspace/``. See the `Projects <../workbench/projects.html>`_ chapter.

**-update**

When you run this option, the server downloads and installs the latest version. The old files are deleted and the new files are copied. It does not require any extra action.

**-download**

Use this option to download the latest version of Phaser Editor 2D. The download is a ZIP file with the binaries for your platform.

Getting the options from a file
===============================

You may run the editor always with the same options, and it could be a waste of time typing each option every time.

If it is the case, you can create a script (a batch) to run the editor with the desired options. Or, you can change the ``flags.txt`` file in the root of the editor installation.

When the editor starts, it reads the ``flags.txt`` file and reads the options provided there. It is a way to configure the editor.

The format of the ``flags.txt`` file is simple. Each line contains an argument. For example, if you always want to run the server like this:

.. code::

    $ PhaserEditor2D -public -port 80

You can write this content in the ``flags.txt`` file:

.. code:: bash

    -public
    -port
    80

Also, you can write blank lines and comments. Comments are lines that start with the ``#`` character:

.. code:: bash

    -public
    # -port
    # 80

If you have Google Chrome installed, let's say, in a Windows machine, you can write these lines in the file:

.. code:: bash

    -browser-command
    "C:\Program Files\Google\Chrome\Application\chrome.exe" "--app=$URL"

It will open the editor in an instance of the Google Chrome browser but in application mode.