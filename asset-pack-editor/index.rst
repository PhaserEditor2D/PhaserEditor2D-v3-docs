.. include:: ../_header.rst

.. highlight:: javascript

Asset Pack Editor
=================

.. toctree::

    create-asset-pack-file
    editor-content-layout
    add-file        

In a Phaser_ game you load the files using the methods of the `Phaser.Loader.LoaderPlugin <https://photonstorm.github.io/phaser3-docs/Phaser.Loader.LoaderPlugin.html>`_ class. This is how you can `load a sprite-sheet <https://photonstorm.github.io/phaser3-docs/Phaser.Loader.LoaderPlugin.html#spritesheet__anchor>`_ file:


.. highlight:: javascript

.. code::

  this.load.spritesheet('bot', 'images/robot.png', { frameWidth: 32, frameHeight: 38 });

You pass a key (``'bot'``) to identify the file in the `game cache <https://photonstorm.github.io/phaser3-docs/Phaser.Cache.CacheManager.html>`_, the URL of the file (``'images/robot.png'``) and a sprite-sheet configuration object, with other information like the frame size.

Or you can load the file by passing a single argument, a `SpriteSheetFileConfig <https://photonstorm.github.io/phaser3-docs/Phaser.Types.Loader.FileTypes.html#.SpriteSheetFileConfig__anchor>`_ configuration object:

.. code::

 this.load.spritesheet({
    key: 'bot',
    url: 'images/robot.png',
    frameConfig: {
    frameWidth: 32,
    frameHeight: 38
    }
 });


Every file type can be loaded using its configuration object, that is just a JSON object. Following this logic, Phaser_ has an especial type of files that contains the configurations of other files, it is the |AssetPackFile|_.

You can load an |AssetPackFile|_ using the ``pack(...)`` method of the loader:

.. code::

 this.load.pack("level1", "assets/pack.json");


The |AssetPackEditor| allows to edit an |AssetPackFile|_, making it very easy to load the assets in your game. Instead of spending a precious amount of time writing the file configurations, with the |AssetPackEditor|_ you can import the files with a visual tool and smart operations.

.. image:: ../images/asset-pack-editor-overview-04072020.webp
  :alt: Asset Pack Editor.

The |AssetPackFile|_ is relevant in the IDE for two main reasons:

* It is a Phaser_ built-in format. This means, you can create an |AssetPackFile|_ with |PhaserEditor|_ and use it in any Phaser_ project, no matter if you are using other IDE. 
* Many of the tools provided by the IDE are based on Phaser_ (like the |SceneEditor|_ others that should be included).  This means, that we can reuse the |AssetPackFile|_ information to load the assets into the IDE internal tools.

Organizing the Asset Pack files
-------------------------------

You can place **Asset Pack** files in any folder inside the ``WebContent`` folder. However, we recommend placing these files in the folders dedicated to the game assets, for example: ``WebContent/assets/pack.json``.

The common is that you need more than one **Asset Pack** file, at least, one for the preload screen and other for the rest of the game screens.

Sometimes, you need to use "helper" assets in the |SceneEditor|_, to create custom objects. You can group all these assets with its own **Asset Pack** file in a separated folder. The "helper" assets are only for design purpose, as references in the |SceneEditor|_, so you don't need to load them in the game and you should exclude them from the distribution build.

This could be a structure of your project:

.. code::

    WebContent/
      assets/
        preload/
          preload-pack.json
          // preload assets ...
        levels/
          levels-pack.json
          // level assets ...
        helpers/
          helper-pack.json
          // helper assets ...

Remember the Asset Pack Editor searches for files inside the folder or sub-folder of the **Asset Pack** file, and you can make it more effective if the structure of the project is well organized.

And remember the `gold rule <workbench.html#resource-filters>`_: don't add to your project (or filter them off) files that are not used by the game or any tool of the |PhaserEditor|_. For example, server-side ``node_modules`` or ``.git`` folders may pollute and slow down all the |PhaserEditor|_ experience.

Outline view
------------

The general purpose `Outline view <workbench.html#outline-view>`_ connects with the active **Asset Pack Editor** and shows all the file configurations grouped by its type. In case of complex files, like atlas or sprite-sheet files, it shows the frames too.

.. image:: images/asset-pack-editor/asset-pack-editor-outline-view.webp
  :alt: Outline view.


Properties view
---------------

The `Properties view`_ connects with the active **Asset Pack Editor** and shows property editors to change the file configurations. All these changes can be undone and redone.

In addition to property editors, in some cases, the `Properties view`_ shows a preview of the selected configuration. If the file was created by an editor inside the IDE (like the |AnimationsEditor|_ or the |TexturePackerEditor|_) then it should provide a button to open the file in its editor.

This preview section is shown when you select a file key in other parts of the IDE, like the `Assets view`_, the |AnimationsEditor|_ and the `Project view <workbench.html#project-view>`_.

.. image:: images/asset-pack-editor/asset-pack-editor-animation-preview.webp
  :alt: Animation preview.

Common operations
-----------------

All operations like add, delete, modify the file configurations can be undone and redone. To delete file keys you can press the ``Delete`` key or use the context menu.


Asset Pack state of the project
-------------------------------

As we mentioned at the beginning of this chapter, the files configured in the **Asset Pack** files are used by other tools in |PhaserEditor|_. For these reasons, the editor keeps an internal, in-memory model (or cache) of the file configurations, so it is not required to parse all the **Asset Pack** files each time a tool needs the information about the files.

This in-memory state is computed by project builders that run each time a file is modified, and it is possible that something (like out of synchronization resources) breaks the builders or that other builders (like thumbnail builders) that run asynchronous operations are not done at a certain moment. In these cases, you can `clean the state of the project <workbench.html#cleaning-projects>`_ and run the builders again.

You can see the in-memory **Asset Pack** files state in the `Assets view <workbench.html#assets-view>`_.

.. image:: images/workbench/assets-view.webp
  :alt: The Assets view.