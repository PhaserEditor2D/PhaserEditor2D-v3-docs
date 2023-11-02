
.. include:: ../_header.rst

Animation properties
--------------------

The animation properties section contains the parameters of the `play() <https://photonstorm.github.io/phaser3-docs/Phaser.GameObjects.Sprite.html#play__anchor>`_ method of the `Sprite <sprite-object.html>`_ game object:

.. image:: ../images/scene-editor-animations-props-20231027.webp
  :alt: Animation properties

The **Action** parameter indicates what method execute to play the animation:

* **NONE** (default): Doesn't call any method, doesn't play any animation.
* **PLAY**: Calls the `play()`_ method.
* **PLAY_REVERSE**: Calls the `playReverse() <https://photonstorm.github.io/phaser3-docs/Phaser.GameObjects.Sprite.html#playReverse__anchor>`_ method.

.. image:: ../images/scene-editor-animations-props-action-param.webp
  :alt: Select the Phaser API method to play the animation.

The **Animation Key** parameter contains the key of the animation to play:

.. image:: ../images/scene-editor-animations-props-animation-key-param-20231027.webp
  :alt: Animation Key parameter.
  
Next to the key name, there are two buttons. A button for opening an animation key selection dialog and a button for previewing the selected animation.

The animation key selection dialog:

.. image:: ../images/prefab-user-props-animation-key-dialog-20231027.webp
  :alt: A dialog for selecting the animation key.

The animation preview dialog:

.. image:: ../images/prefab-user-props-animation-key-preview-dialog-20231027.webp
  :alt: Animation key preview.

This dialog searches for animations defined in a `Phaser animations file <../animations-editor/>`_ or in the Aseprite_ assets included in an |AssetPackFile|_.

This is the code the |SceneCompiler|_ generates for playing the animation:

.. code:: 

    dragon.play("dragon - dragon/Moving Forward");

Or, if you select the **PLAY_REVERSE** action:

.. code:: 

    dragon.playReverse("dragon - dragon/Moving Forward");

When you define the animations in the |AnimationsEditor|_ or in Aseprite_, you configure parameters like repetitions, duration, direction, etc... However, in the scene, you can pass a custom configuration to the `play()`_ method. To do this in the |SceneEditor|_ you have to check the **Custom Config** parameter.

If the **Custom Config** parameter is selected, then it shows the **Animation Configuration** section. It shows all the parameters you can set to an animation:

.. image:: ../images/scene-editor-animations-props-custom-config-20231027.webp
  :alt: Custom configuration.

When you set the custom configuration, the |SceneCompiler|_ generates this code:

.. code:: 

    dragon.play({
        "key": "dragon - dragon/Moving Forward"
        "frameRate": 10,
        "repeat": -1
    });