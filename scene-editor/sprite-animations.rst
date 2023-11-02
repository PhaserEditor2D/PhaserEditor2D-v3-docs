.. include:: ../_header.rst

Sprite animations
-----------------

.. toctree::
 :maxdepth: 1

 sprite-animations-preview
 sprite-animations-aseprite

A `Sprite <sprite-object.html>`_ game object is an image object with the capability of displaying frame-by-frame animations.

In |PhaserEditor|_ there are two workflows for making animations in your game:


.. topic:: Workflow 1
    
    Using the |AnimationsEditor|_. It gets the image frames from an |AssetPackFile|_ and groups the frames into animations. You can set different properties to the animation, like the frame rate, repetitions, delay, etc... and finally, you load the animation file into the |AssetPackFile|_.

.. topic:: Workflow 2
    
    Exporting the animations from the Aseprite_ software. It outputs Asperite animation files that are Phaser-compatible and that you can load in an |AssetPackFile|_.

.. topic:: Finally

    Once the animation assets (produced by the |AnimationsEditor|_ or Aseprite_) are defined in the |AssetPackFile|_, you can use them in different tools of the |SceneEditor|_:

    * The animation blocks in the |BlocksView|_. You can create a Sprite_ game object by `dropping an animation block into the scene <./sprite-object.html>`_.
  
        .. image:: ../images/scene-editor-sprite-create-from-animation-block-20231023.webp
            :alt: Create sprite from animation block

    * The `Animation and Animation Configuration sections <animations-properties.html>`_ of the **Inspector** view. It allows playing an animation on a Sprite_ game object.
  
        .. image:: ../images/scene-editor-animations-props-custom-config-20231027.webp
            :alt: Animation properties.

    * The `Animation Key user property type <prefab-user-properties-animation-key-type.html>`_. It allows selecting the name of an animation defined in an |AssetPackFile|_.
        
        .. image:: ../images/prefab-user-props-animation-key-dialog-20231027.webp
            :alt: Animation Key user property