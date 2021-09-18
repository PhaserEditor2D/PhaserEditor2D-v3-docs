.. include:: ../_header.rst
   
.. highlight:: bash

Install Phaser Editor 2D All-in-One
===================================

The |allInOne|_ distribution wraps |core|_ in an ElectronJS_ application. It works like common desktop applications, and allows opening multiple projects and windows. It also provides project templates for creating new projects.

Each platform has a different way to run and "install" |allInOne|_. 

Windows installation
####################

Download the file ``PhaserEditor2D-allInOne-<version>-windows.zip`` from the `downloads page <https://phasereditor2d.com/downloads>`_, unzip it, and run the file ``PhaserEditor2D.exe``. If you like, you can pin it in the taskbar, and the next time you can launch it by clicking on the taskbar icon.

The ``resources\app\server`` folder contains the |core|_ binaries. You can run it alone if you wish.

macOS installation
##################

Download the file ``PhaserEditor2D-allInOne-<version>-macos.zip``, unzip it, and run the application ``PhaserEditor2D`` (it is a ``PhaserEditor2D.app`` folder). 
The first time you run it, you should right-click on it and select the **Open** option.

To install it in the system, you can move the ``PhaserEditor2D`` application to the **Applications** folder.

The |core|_ binaries are included in the ``PhaserEditor2D.app/Contents/Resources/app/server`` folder. You can run it alone if you wish.


Linux installation
##################

Download the file ``PhaserEditor2D-allInOne-<version>-linux.zip`` and unzip it. Open the terminal and run the ``PhaserEditor2D`` file:

.. code::
    
    $ ./PhaserEditor2D


However, we recommend creating a shortcut in the desktop and a menu entry in the Desktop Environment. To do this, execute the script ``install.sh``:

.. code::
    
    $ ./install.sh


And ``uninstall.sh`` to remove the shortcuts:

.. code::

    $ ./uninstall.sh


In both cases, you don't have to provide ``root`` privileges.

The |core|_ binaries are in the ``resources/app/server`` folder. You can run it alone.
