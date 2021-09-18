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

**-external-editor-command**

When the server runs in application mode, the IDE allows launching an external editor. By default, it is configured to run |VSCode|_ (the ``code`` command).

However, you can change the command to launch a different external editor. For example, if instead of |VSCode|_ you want to launch the Atom editor, you can run the server with these options:

.. code::

    $ PhaserEditor2D -external-editor-command '/path/to/atom "$LOC"' -external-editor-name Atom

Note the ``$LOC`` variable will be expanded to the location of the project.

**-external-editor-name**

The display name of the external editor. Used in the UI. By default it is **Visual Studio Code**.

**-editor string**

In the installation folder of |PhaserEditor|_ there is the ``editor`` folder. It contains the code of the IDE. If you want to load other implementation of the IDE, you can use the ``-editor /other/editor/implementation`` option. This is useful for testing or developing a different version of the IDE.

**-lickey string**

Use this option to unlock the editor: ``-lickey <valid-lic-key>``.

**-port int**

By default, the server uses the ``1959`` port for HTTP networking. You can use this option to change it.

**-project string**

This is a mandatory flag. Use it for setting the project path:

.. code::

    $ PhaserEditor2D -project /path/to/project

Getting the options from a file
===============================

You may run the editor always with the same options, and it could be a waste of time typing each option every time.

If it is the case, you can create a script (a batch) to run the editor with the desired options. Or, you can change the ``flags.txt`` file in the root of the editor installation.

When the editor starts, it reads the ``flags.txt`` file and reads the options provided there. It is a way to configure the editor.

The format of the ``flags.txt`` file is simple. Each line contains an argument. For example, if you always want to run the server like this:

.. code::

    $ PhaserEditor2D -public -port 80 -project /path/to/project

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