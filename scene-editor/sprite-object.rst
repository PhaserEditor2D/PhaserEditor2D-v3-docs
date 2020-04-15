.. include:: ../_header.rst

Sprite object
-------------

The `Sprite <sprite-object.html>`_ is a built-in Phaser_ object type: `Phaser.GameObjects.Sprite <https://photonstorm.github.io/phaser3-docs/Phaser.GameObjects.Sprite.html>`_. It is like the `Image <image-object.html>`_ type, but in addition it can play `sprite animations <https://photonstorm.github.io/phaser3-docs/Phaser.GameObjects.Sprite.html#play__anchor>`_. This means, that you may use an `Sprite`_ object only if it will be animated in the game, otherwise, the better is to use an `Image`_.

A `Sprite`_ is created in code using the `sprite factory <https://photonstorm.github.io/phaser3-docs/Phaser.GameObjects.GameObjectFactory.html#sprite__anchor>`_. This is how the |SceneCompiler|_ generates the code of an `Sprite`_:

.. code::

  const player = this.add.sprite(192, 512, "dragon-atlas", "idle-000");

To create an `Sprite`_ object, you can use the `Add Object dialog <add-object-dialog.html>`_. Also, you can convert an `Image`_ or `TileSprite <tile-sprite-object.html>`_ into a `Sprite`_.

`Learn more about type conversion <replace-object-type.html>`_
