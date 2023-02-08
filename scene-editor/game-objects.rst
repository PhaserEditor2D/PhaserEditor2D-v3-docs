
.. include:: ../_header.rst

Game Object types
-----------------


.. toctree::
    :maxdepth: 1

    common-object-properties
    image-object    
    sprite-object
    tile-sprite-object
    nine-slice-object
    text-object
    bitmap-text-object
    tilemap-object
    tilemap-layer-object
    shape-object
    container-object
    layer-object
    replace-object-type

The |SceneEditor|_ is in active development and only supports a very basic set of game object types. Eventually, we should add more types and more properties. 

However, the way the prefabs_ work allows to use a prefab_ as a black box. This black box can be added to the scene, but you can provide a custom implementation. This technique is covered in the section `Using a prefab as a black box <prefab-black-box.html>`_. In addition, you can add new game objects `via plugins <../misc/plugins.html>`_. You can find some of these plugins in the marketplace_

The supported Game Object types are:

* `Image <image-object.html>`_
* `Sprite <sprite-object.html>`_
* `Tile Sprite <tile-sprite-object.html>`_
* `Text <text-object.html>`_
* `Bitmap Text <bitmap-text-object.html>`_
* `Tilemap Layer <tilemap-layer-object>`_
* `Shape <shape-object>`_
* `Container <container-object>`_
* `Layer <layer-object>`_
* `Arcade Physics Object <arcade-physics-add-object>`_
