.. include:: ../_header.rst
   
.. highlight:: bash


Server distribution
===================

Download the ``PhaserEditor2D-<version>-<platform>.zip`` file for your platform. 

Un-compress the downloaded file and run the server:

In Windows, double click the ``PhaserEditor2D.exe``.

In macOS and Linux, open the terminal and run:

.. code::

    $ cd /path/to/downloaded/PhaserEditor2D
    $ ./PhaserEditor2D

Or double click on the executable file ``PhaserEditor2D``.

The server starts and opens the default browser in the address: ``http://127.0.0.1:1959/editor``. Like many other HTTP servers, it may open the terminal of your OS and shows the server messages.

The editor stores the projects in your home folder, in the ``PhaserEditor2D_Projects`` folder (workspace). But you can change it using the ``-ws`` option:

.. code-block:: guess

    > PhaserEditor2D.exe -ws path\to\your\workspace

Application mode
################

By default, the server runs in application-mode. It means it does its best on providing better integration with your OS:

    * It opens the default browser at the right URL (you can change it with the ``-browser-command`` option).
    * It allows launching third-party OS applications like Visual Studio Code or the file manager (Windows Explorer, macOS Finder, etc...).
    * It denies remote connections.
    * When it starts, it checks if there is another instance of the server running in the same port and, if it is the case, it sends a message to the old running instance for opening the editor in the default browser.

However, you can run the server in a remote host using the ``-public`` option:

.. code::

    > PhaserEditor2D.exe -public

It allows remote connections but disables all the OS integration described before.

`Learn more about all the command line options <../misc/server-options.html>`_

.. warning::

    In previous versions of the editor, you had to use the ``-desktop`` and ``-enable-advanced-js-editor`` options. Since ``v3.8.0`` it is not needed anymore. By default, the editor will start in desktop mode and will enable all the JavaScript tooling. Actually, we removed those options.
