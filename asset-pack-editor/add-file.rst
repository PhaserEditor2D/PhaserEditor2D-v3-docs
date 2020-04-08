.. include:: ../_header.rst

Add file configurations
-----------------------

.. toctree::

    add-file-with-add-button
    import-from-files-view

You can add new file configurations in two ways:

* By pressing the **Add File Key** in the main toolbar.

* By importing files from the Blocks view.

Importing files from the Blocks view
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The `Blocks view <workbench.html#blocks-view>`_ is a general-purpose view that connects with the active editor and provides the "blocks" needed to build the objects of the editor.

In the case of the **Asset Pack Editor**, the `Blocks view`_ shows the files that are candidates to be imported. A file is a candidate to be imported if:

* The file belongs to the folder, or sub-folder, of the Asset Pack file of the editor.

* The file is not present in any other pack file of the project.

* If the file has a content type or file name extension that we know is never loaded in games: 

 * TypeScript files (``.ts``).

 * |TexturePackerEditor|_ files (``.atlas``).

 * |SceneEditor|_ files (``.scene``).

 * Other **Asset Pack** files.

The workflow is the following:

#. Select the files to be imported in the `Blocks view`_.

#. Select one of the options listed in the `Properties view`_ to import the files.

 .. image:: images/asset-pack-editor/asset-pack-editor-import-files-from-blocks-view.png
   :alt: Import files from Blocks view.

#. Edit the new file configurations in the `Properties view`_.

This is a shorter workflow, you select the files you want to import and the editor guesses automatically what type of configuration needs to be created.

This process to guess the type of files provides three groups of options:

#. Guess the type of the file from its content type. It is the case of atlas files, animations files, bitmap files, tilemap files, image and audio files, JavaScript files associated with scenes, audio-sprites files.

#. Guess the type of the file just by its extension. For example, ``.json`` and ``.xml``.

#. The last option is not associated with any file type, it opens a dialog with all the file types and you should select the type you consider is the indicated from the selected files.

.. image:: images/asset-pack-editor/asset-pack-editor-import-files-from-blocks-view-options.png
  :alt: The different options to import the files.

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

.. image:: images/asset-pack-editor/asset-pack-editor-scene-scripts.png
  :alt: Scene JavaScript files are displayed with a scene screenshot.
