.. include:: ../_header.rst

Importing JavaScript files
--------------------------

In the JavaScript development world, there are multiple ways to load the script files. The common is to load them using the ``<script>`` tag in the ``index.html`` file. Some frameworks allow loading script files at any time, via JavaScript. Phaser_ provides different ways to load the scripts, each one with its purpose:

* ``this.load.script(...)`` `[docs] <https://photonstorm.github.io/phaser3-docs/Phaser.Loader.LoaderPlugin.html#script__anchor>`_: It load and execute the provided script files.

* ``this.load.scripts(...)`` `[docs] <https://photonstorm.github.io/phaser3-docs/Phaser.Loader.LoaderPlugin.html#scripts__anchor>`_: It loads a list of script files and execute them in the same order. Note in the ``script()`` method the files may be executed in random order. This can break your code if one file depends on another file that is not loaded yet.

* ``this.load.scenePlugin(...)`` `[docs] <https://photonstorm.github.io/phaser3-docs/Phaser.Loader.LoaderPlugin.html#scenePlugin__anchor>`_: It loads the script files and execute them, but assume them create new `Phaser.Scenes.ScenePlugin <https://photonstorm.github.io/phaser3-docs/Phaser.Loader.LoaderPlugin.html#Phaser.Scenes.ScenePlugin.html>`_ instances.

* ``this.load.sceneFile(...)`` `[docs] <https://photonstorm.github.io/phaser3-docs/Phaser.Loader.LoaderPlugin.html#sceneFile__anchor>`_: It loads the script files and execute them, but assume them create `Phaser.Scene <https://photonstorm.github.io/phaser3-docs/Phaser.Loader.LoaderPlugin.html#Phaser.Scene.html>`_ instances.

So the same Phaser_ framework can be used as a JavaScript packing/loading tool, and it has a few clear advantages:

* You can load the scripts by demand. For example, when the game has lot of levels.

* You can report loading progress of the script files just like you do with the other assets.

* The scripts can be added to the **Asset Pack** files using the |PhaserEditor|_ toolset.

By the way, when you add a JavaScript file to an |AssetPackFile|_, and that script is associated with a |SceneEditor|_ file (``.scene``), then the |AssetPackEditor|_ shows an inline preview of the scene, for easy identification.

.. image:: ../images/asset-pack-editor-import-script-files-04082020.webp
  :alt: Scene JavaScript files are displayed with a scene screenshot.

Execution order of the scripts
``````````````````````````````

A missing class is a common error when you load the scripts using the |AssetPackEditor|_. It happens when a class ``B`` in a script ``B.js`` extends a class ``A`` in the script ``A.js``, but ``B.js`` is executed before ``A.js``. The solution is to use the `Scripts file type <https://photonstorm.github.io/phaser3-docs/Phaser.Loader.LoaderPlugin.html#scripts__anchor>`_. With this method, you can set execution order of the files:

.. image:: ../images/asset-pack-editor-scripts-1-09172020.webp
  :alt: Select to add a Scripts file type.

.. image:: ../images/asset-pack-editor-scripts-2-09172020.webp
  :alt: Select to add a Scripts file type.
