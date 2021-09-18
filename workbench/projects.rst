.. include:: ../_header.rst

.. highlight:: bash

Projects
========

A |PhaserEditor|_ project is just a folder. It contains the files of your game and generally it is the root of the web path of the game. This means, that probably you should place the ``index.html`` file in the root of the folder.

There are project setups (for example, based on |webpack|_) where the project folder isn't the root of the game. 

`Learn more about setting the public root of the project <../asset-pack-editor/public-root.html>`_

In |core|_, you should pass the project path as a program argument:

.. code::

  $ PhaserEditor2D -project /path/to/project

In |allInOne|_, you can select the project folder or create a new one.

`Learn how to create your first project <../first-steps/create-first-project.html>`_

Reload project
--------------
|PhaserEditor|_ is not created with collaborative editing in mind. This means, that it assumes that only one user is working on the same project at the same time. You can use source control managers like ``Git`` to collaborate with your team.

However, it may be possible that you change the project files with external tools and you need to refresh that changes in the IDE. When the IDE gets the focus, it does an incremental reload of the changes made by external tools, but you can force (and we recommend) a full reload of the project:

* Pressing ``Ctrl+Alt+R``.
* Or clicking on the **Reload Project** option of the |MainMenu|_.
 
A full reload of the project also may help to fix a glitch with the |SceneEditor|_ or any other editor.

A reload of the project is different from a reload of the whole web page because only the files of the project are requested again. But a full web page reload is a good procedure if you see your IDE is consuming a lot of memory resources.

You can read the `Resources caching <../misc/resources-caching.html>`_ section for additional information.