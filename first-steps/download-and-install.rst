.. include:: ../_header.rst
   
.. highlight:: bash


Download and install
--------------------

|PhaserEditor|_ is built with web technologies and you can run it in your desktop or in the cloud (see |PlayPhaserEditor|_).

To run it in your desktop or private server, you have to download the binaries for your platform:

`Download Phaser Editor 2D for desktop <https://phasereditor2d.com/downloads>`_

Un-compress the downloaded file and run the server:

In Windows, double click the ``PhaserEditor2D.exe``.

In macOS and Linux, open the terminal and run:

.. code::

    $ cd /path/to/downloaded/PhaserEditor2D
    $ ./PhaserEditor2D

Or double click on the executable file ``PhaserEditor2D``.

The server starts and opens the default browser in the address: ``http://127.0.0.1:1959/editor``. Like many other HTTP servers, it may open the terminal of your OS and shows the server messages.

The projects will be stored in your home folder, in the ``PhaserEditor2D_Projects`` folder (workspace). You can change it using the ``-ws`` option:

.. code-block:: guess

    > PhaserEditor2D.exe -ws path\to\your\workspace

By default, the server runs in "application mode". It means, it does its best on providing a better integration with your OS:

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

    In previous versions of the editor you had to use the ``-desktop`` and ``-enable-advanced-js-editor`` options. Since ``v3.8.0`` it is not needed anymore. By default, the editor will start in desktop mode and will enable all the JavaScript tooling. Actually, those options were removed.
