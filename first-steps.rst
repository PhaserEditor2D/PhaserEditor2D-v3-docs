.. include:: _header.rst
   
.. sectnum::
   :depth: 3
   :start: 2

.. highlight:: bash

First steps
===========

This chapter is about the first steps to get running the IDE and create your first project.

Download and install
--------------------

|PhaserEditor|_ is built with web technologies and you can run it in your desktop or in the cloud (see |PlayPhaserEditor|_).

To run it in your desktop or private server, you have to download the binaries for your platform:

`Download Phaser Editor 2D for desktop <https://phasereditor2d.com/downloads>`_

You don't need to install the IDE, just un-compress the downloaded file and run the server:

In Windows,open the command prompt and run:

.. code::

 > PhaserEditor2D.exe -desktop


In macOS and Linux, open the terminal and run:

.. code::

 $ ./PhaserEditor2D -desktop


The server should start and open the default browser in the address: ``http://127.0.0.1:1959/editor``.

Create your first project
-------------------------

The first time you open the IDE in the browser it shows the `New Project Dialog <workbench.html#project-templates>`_. This dialog displays the project templates available in the server. Select one of the templates, write the name of the project and press the **Create Project** button:

.. image:: images/first-steps-new-project-1-04032020.jpg
  :alt: New project dialog

The new project is created and shown in the workbench:

.. image:: images/first-steps-new-project-2-04032020.jpg
  :alt: Workbench shows the new project


Unlock the IDE
--------------

By default, the IDE runs in a Free mode. This mode includes all the IDE features, but limits the number of files per project to 70. If you need to create bigger projects, you have to unlock the IDE.

To unlock the IDE:

1. Purchase a license key in the `Phaser Editor 2D Gumroad page <https://gumroad.com/l/phasereditor/>`_. That key is valid for all the IDE versions. If you have a valid license key from a previous version (v1 or v2) then you don't need to purchase a new one.

2. Open the terminal of your OS and write the command:

  .. code::

    > PhaserEditor2D.exe -lickey <license key>


`Learn more about licenses and pricing <pricing.html>`_