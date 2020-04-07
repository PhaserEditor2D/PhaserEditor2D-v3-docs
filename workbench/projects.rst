.. include:: ../_header.rst

Projects
========

A |PhaserEditor|_ project is just a folder. It contains the files of your game and is the root of the web path of the game. This means, that you should place the ``index.html`` file in the root of the folder.

The projects are created inside the workspace. The workspace can be any folder. By default, the IDE creates a workspace folder in your home directory, with the ``PhaserEditor2D_Projects`` name.

You can change the location of the workspace when you start the server:

.. highlight:: bash

.. code::

    $ PhaserEditor2D -desktop -ws "path/to/my/workspace"

`Learn more about the server options <../misc/server-options.html>`_

New Project dialog
------------------

When you open the IDE in an empty workspace, it first shows the `New Project dialog`_.

This dialog displays the project templates available in your installation. You must select a template, write a new name for the project, and create the project.

.. image:: ../images/workbench-new-project-04072020.png
 :alt: New project dialog.

You can open this dialog at any time:

1. Open the `New File dialog <new-file-dialog.html>`_ (press the keys ``Ctrl+Alt+N`` or click the **New File** button in the |MainToolbar|_).
2. Select **Project**.
 .. image:: ../images/workbench-new-file-select-project-04072020.png
  :alt: Open New Project dialog from the New File dialog.

Projects dialog
---------------

When you open the IDE, if the workspace is not empty, it shows the `Projects dialog`_. Also, you can open it at any time:

* Pressing the ``Ctrl+Alt+P`` keys.
* Or clicking on the **Open Project** option of the |MainMenu|_.

The dialog displays all the projects in the workspace, you can select one and open it.

Project templates
-----------------

TODO

Reload project
--------------

TODO