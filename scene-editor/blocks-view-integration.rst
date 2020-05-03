.. include:: ../_header.rst

Blocks view integration
~~~~~~~~~~~~~~~~~~~~~~~

When the |SceneEditor|_ is active, the |BlocksView| shows the "blocks" you can get and drop into the scene, to create new objects. These are the blocks:

* Images packed in an |AssetPackFile|_.
* The frames of a sprite-sheet or texture map defined in an |AssetPackFile|_.
* `Bitmap Fonts <bitmap-text-object.html>`_ packed in an |AssetPackFile|_.
* The prefabs_ you created.

If you drop an image or texture frame into the scene, the editor creates a new `Image object <image-object.html>`_ and sets the dropped texture as the object's texture.

Maybe, instead of an `Image <image-object.html>`_, you need to create a `TileSprite <tile-sprite-object.html>`_ with the same texture, in that case, you can just `convert it to a TileSprite <replace-object-type.html>`_.

If you drop a **BitmapFont**, the editor creates a `Bitmap Text <bitmap-text-object.html>`_.

If you drop a Prefab_, the editor creates an instance of it.

.. image:: ../images/scene-editor-blocks-view-04102020.webp
 :alt: Blocks view.