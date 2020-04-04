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

To run your project, click in the **Play** button at the beginning of the toolbar:

.. image:: images/first-steps-new-play-project-04032020.jpg
  :alt: Play the project.

Add an image to the scene
-------------------------

Let's add an image to the ``Level.scene`` file created by the **Basic JavaScript** project template.

1. To upload an image to the project. Rich-click on the ``assets`` folder and press the **Upload Files** option of the context menu.

  .. image:: images/first-steps-upload-file-1-04042020.jpg
  :alt: Upload image.

2. It opens the **Upload Files** dialog. Click on the **Browse** button and select the image file in your computer.

  .. image:: images/first-steps-upload-file-2-04042020.jpg
  :alt: Upload image.

3. Press the **Upload** button. The image is uploaded to the ``assets`` folder and shown in the **Files** view.


Unlock the IDE
--------------

By default, the IDE runs in a Free mode. This mode includes all the IDE features, but limits the number of files per project to 70. If you need to create bigger projects, you have to unlock the IDE.

To unlock the IDE:

1. Purchase a license key in the `Phaser Editor 2D Gumroad page <https://gumroad.com/l/phasereditor/>`_. That key is valid for all the IDE versions. If you have a valid license key from a previous version (v1 or v2) then you don't need to purchase a new one.

2. Open the terminal of your OS and write the command:

  .. code::

    > PhaserEditor2D.exe -lickey <license key>


`Learn more about licenses and pricing <pricing.html>`_

Learn Phaser with Phaser Editor 2D
----------------------------------

|PhaserEditor|_ helps you to make a couple of tasks that could be very tedious to do yourself, manually. However, it requires you to known Phaser_ and JavaScript programming.

Some users ask us if it is better to learn Phaser_ first, and then go with the IDE, or if the IDE helps them to learn Phaser_.

In the previous version of the IDE, we included a lot of tools to learn Phaser_, but in this version, we are providing only the tools for create the games (soon, we should deliver a brand new product dedicated only to learn Phaser_).

However, we think the current IDE is a good resource to start learning Phaser_:

* It creates the projects for you and you can start writing Phaser_ code quickly.

* The projects are fully compatible with external tools, like |vscode|_.

* Because it helps you on making the scenes, you can create your first level very quickly and get motivated.

* The scenes are compiled to a clean and readable Phaser_ code, so you can learn from it too.

* Practically all the tools in the IDE are based on the Phaser_ standards, "everything" you learn about the IDE may help you to understand Phaser_.

`Learn about Phaser <phaser.io/learn>`_