.. include:: ../_header.rst

Image object
------------

The `Image <image-object.html>`_ is a built-in Phaser_ object type: `Phaser.GameObjects.Image <https://photonstorm.github.io/phaser3-docs/Phaser.GameObjects.Image.html>`_.

You can create an `Image`_ object using the `Add Object dialog <add-object-dialog.html>`_ or dropping a texture from the `Blocks view <blocks-view-integration.html>`_.

The main difference between an `Image`_ and a `Sprite <sprite-object.html>`_ is that the `Image`_ objects cannot `play sprite animations <https://photonstorm.github.io/phaser3-docs/Phaser.GameObjects.Sprite.html#play__anchor>`_.

An `Image`_ is created in code using the `image factory <https://photonstorm.github.io/phaser3-docs/Phaser.GameObjects.GameObjectFactory.html#image__anchor>`_. This is how the `scene compiler <scene-compiler.html>`_ generates the code of an `Image`_:

.. code::

  const branch_1 = this.add.image(192, 512, "atlas-props", "branch-01");

The `Image`_ type has properties that can be modified in the |InspectorView|_.

Texture properties
~~~~~~~~~~~~~~~~~~

TODO