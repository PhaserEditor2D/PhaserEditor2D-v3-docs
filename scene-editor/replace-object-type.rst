
.. include:: ../_header.rst

Replacing the type of an object
-------------------------------

When you drop a |BlocksView|_ item into the scene, a new object is created. If the item you drop is an image or atlas frame, it creates an `Image <image-object.html>`_ object.

However, you can change the type of the `Image`_ object to another, like a `Sprite <sprite-object.html>`_ or `TileSprite <tile-sprite-object.html>`_. Actually, you can convert any type of object to any other type. We call it object type replacement.

To replace the type, execute the **Replace Type** command that is shown in the **Type** sub-menu of the context menu. That command opens the **Replace Type** dialog. The dialog shows the different types supported by the editor, including your own prefabs_. Select the new type and press **Replace**.

TODO: fix the problem with converting a text object to a bitmap-text. Then use it as example here, in the images.