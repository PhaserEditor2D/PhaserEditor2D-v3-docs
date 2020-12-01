.. include:: ../_header.rst
   
.. highlight:: bash

ElectronJS-based distribution
=============================

The ElectronJS_-based distribution of the editor is simple. The Phaser Editor 2D server (that is part of the distribution) does most of the job. When you execute the ElectronJS_ application, the main-process starts the editor server in `application mode <./install-server/#application-mode>`_, and the renderer-process loads the editor's web page.

Each platform has a different way to run and "install" the Electron-based Phaser Editor 2D. 

Windows installation
####################

Download the file ``PhaserEditor2D-VERSION-electron-windows.zip``, unzip it, and run the file ``PhaserEditor2D.exe``. If you like, you can pin it in the taskbar, and the next time you can launch it by clicking on the taskbar icon.

The ``resources\app\server`` folder contains the server binaries. You can run it alone if you wish.

macOS installation
##################

Download the file ``PhaserEditor2D-VERSION-electron-macos.zip``, unzip it, and run the application ``PhaserEditor2D`` (it is a ``PhaserEditor2D.app`` folder). 
The first time you run it, you should right-click on it and select the **Open** option.

To install it in the system, you can move the ``PhaserEditor2D`` application to the **Applications** folder.

The server binaries are included in the ``PhaserEditor2D.app/Contents/Resources/app/server`` folder. You can run it alone if you wish.


Linux installation
##################

Download the file ``PhaserEditor2D-VERSION-electron-linux.zip`` and unzip it. Open the terminal and run the ``PhaserEditor2D`` file:

.. code::
    
    $ ./PhaserEditor2D


However, we recommend creating a shortcut in the desktop and a menu entry in the Desktop Environment. To do this, execute the script ``install.sh``:

.. code::
    
    $ ./install.sh


And ``uninstall.sh`` to remove the shortcuts:

.. code::

    $ ./uninstall.sh


In both cases, you don't have to provide ``root`` privileges.

The server binaries are in the ``resources/app/server`` folder. You can run it alone.
