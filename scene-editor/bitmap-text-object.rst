.. include:: ../_header.rst

Bitmap Text objects
-------------------

The `Phaser.GameObjects.BitmapText <https://photonstorm.github.io/phaser3-docs/Phaser.GameObjects.BitmapText.html>`_ is widely used in Phaser_ game development, to display texts.  

You can create a `Bitmap Text <bitmap-text-object.html>`_ object in two ways:

* Dragging a `BitmapText built-in block <blocks-view-integration.html>`_ and dropping it on the scene.

* Dragging a `BitmapFontFile <https://photonstorm.github.io/phaser3-docs/Phaser.Loader.FileTypes.BitmapFontFile.html>`_ key from the |BlocksView|_ and dropping it in the scene. The `BitmapFontFile`_ should be present in an |AssetPackFile|_.

  .. image:: ../images/scene-editor-bitmap-text-04162020.webp
    :alt: Drop BitmapFont key to create a BitmapText object.

`Bitmap Text`_ objects are created in code using the `bitmapText factory <https://photonstorm.github.io/phaser3-docs/Phaser.GameObjects.GameObjectFactory.html#bitmapText__anchor>`_:


.. code::

  this.add.bitmapText(100, 150, "desyrel", "Hello bitmap text!", 70, 0);

The Bitmap Text properties
~~~~~~~~~~~~~~~~~~~~~~~~~~

The `Bitmap Text`_ type contains many of the `common object properties <common-object-properties.html>`_:

* `Variable properties <variable-properties.html>`_

* `Lists properties <lists-properties.html>`_

* `Parent properties <parent-container-properties.html>`_

* `Transform properties <transform-properties.html>`_

* `Origin properties <origin-properties.html>`_

* `Flip properties <flip-properties.html>`_

* `Visible property <visible-property.html>`_

* `Alpha properties <alpha-properties.html>`_

It also contains the `Text property <text-property.html>`_, that is dedicated to all the objects with texts, and its specific properties:

* The `font <https://photonstorm.github.io/phaser3-docs/Phaser.GameObjects.BitmapText.html#font__anchor>`_ property shows the key of the BitmapFont in the |AssetPackFile|_. To change the font, click on the button. It opens the **Select Bitmap Font** dialog.

  .. image:: ../images/scene-editor-select-bitmap-font-dialog-04162020.webp
    :alt: Select Bitmap Font dialog.

* The `fontSize <https://photonstorm.github.io/phaser3-docs/Phaser.GameObjects.BitmapText.html#fontSize__anchor>`_ property.

* The `align <https://photonstorm.github.io/phaser3-docs/Phaser.GameObjects.BitmapText.html#align__anchor>`_ property.

* The `letterSpacing <https://photonstorm.github.io/phaser3-docs/Phaser.GameObjects.BitmapText.html#letterSpacing__anchor>`_ property.