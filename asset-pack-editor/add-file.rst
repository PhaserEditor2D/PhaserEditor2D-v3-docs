.. include:: ../_header.rst

Add file configurations
-----------------------

.. toctree::

    add-file-with-add-button
    import-from-blocks-view
    import-from-files-view    

You can add new file configurations in different ways:

* Using the `Add File <add-file-with-add-button.html>`_ command.

* Importing the files `from the Blocks view <import-from-blocks-view.html>`_.

* Importing the files `from the Files view <import-from-files-view.html>`_.


Importing JavaScript files
--------------------------

In the JavaScript development world, there are multiple ways to load the script files. The common is to load them using ``<script>`` tags in the ``index.html`` file. Some frameworks allow loading script files at any time, via code. Phaser_ provides different ways to load the scripts, each one with its purpose:

* `this.load.script(...) <https://photonstorm.github.io/phaser3-docs/Phaser.Loader.LoaderPlugin.html#script__anchor>`_: it load and execute the provided script files.

* `this.load.scripts(...) <https://photonstorm.github.io/phaser3-docs/Phaser.Loader.LoaderPlugin.html#scripts__anchor>`_: it loads a list of script files and execute them in the same order. Note in the ``script()`` method the files may be executed in random order.

* `this.load.scenePlugin(...) <https://photonstorm.github.io/phaser3-docs/Phaser.Loader.LoaderPlugin.html#scenePlugin__anchor>`_: it loads the script files and execute them, but assume them create new `Phaser.Scenes.ScenePlugin <https://photonstorm.github.io/phaser3-docs/Phaser.Loader.LoaderPlugin.html#Phaser.Scenes.ScenePlugin.html>`_ instances.

* `this.load.sceneFile(...) <https://photonstorm.github.io/phaser3-docs/Phaser.Loader.LoaderPlugin.html#sceneFile__anchor>`_: it loads the script files and execute them, but assume them create `Phaser.Scene <https://photonstorm.github.io/phaser3-docs/Phaser.Loader.LoaderPlugin.html#Phaser.Scene.html>`_ instances.

So the same Phaser_ framework can be used as a JavaScript packing/loading tool, and it has some clear advantages:

* You don't need a third-party tool to control the scripts loading.

* You can report loading progress of the script files just like you do with the other assets.

* The scripts can be added to the **Asset Pack** files using the |PhaserEditor|_ toolset.

By the way, when you add a JavaScript file to an **Asset Pack** file, and that script is associated with a |SceneEditor|_ file (``.scene``), then the **Asset Pack Editor** shows a screenshot of the scene, as file icon, for easy identification.

.. image:: images/asset-pack-editor/asset-pack-editor-scene-scripts.webp
  :alt: Scene JavaScript files are displayed with a scene screenshot.
