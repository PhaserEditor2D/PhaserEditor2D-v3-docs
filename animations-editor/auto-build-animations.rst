.. include:: ../_header.rst

Automatic creation of the animations
------------------------------------

The most powerful feature of the |AnimationsEditor|_ is the automatic creation of the animations.

It is a process that allows to create multiple animations by selecting all the frames required by all the animations.

This is how it works:

* Select a couple of frames in the |BlocksView|_. If you select a texture map or spritesheet, all their frames will be considered too.

    .. image:: ../images/animations-auto-build-1.webp
        :alt: Auto build animations.

* The **Auto Build Animations** section in the |InspectorView|_ shows a list of animations that can be created. Press the **Build animations** button.

    .. image:: ../images/animations-auto-build-2.webp
        :alt: Auto build animations.

* It shows a dialog asking for a add a prefix to the generated animations. It is optional. This could be needed for disambiguation. For example, if the animations to be added has the names **run**, **walk**, **jump**, you can add a prefix like **player-** or **enemy-**, so the animations will have the names **player-run**, **player-walk**, **player-jump**.

    .. image:: ../images/animations-auto-build-3.webp
        :alt: Auto build animations.

* All the animations will be created with the same parameters (**frameRate**, **repeat**, etc...) but you can change them in the |InspectorView|_.

    .. image:: ../images/animations-auto-build-4.webp
        :alt: Auto build animations.

The process of group the frames by a common prefix is very simple. To get the prefix of a frame, it removes all the non-alpha characters at the end:

**Input**

``acorn-1``
``acorn-2``
``acorn-3``
``ant-1``
``ant-2``
``ant-3``
``ant-4``
``ant-5``
``ant-6``

**Output**

* ``acorn`` animation

    * ``acorn-1`` frame
    * ``acorn-2`` frame
    * ``acorn-3`` frame

* ``ant`` animation

    * ``ant-2`` frame
    * ``ant-3`` frame
    * ``ant-4`` frame
    * ``ant-5`` frame
    * ``ant-6`` frame

Some texture packing tools include the extension of the images in the name of the frames, for example, ``ant-1.png``. It breaks the algorithm of extract the prefix of a frame. For that reason, it first does a removal of all the image extensions of the frame names, if it is the case. Then ``ant-1.png`` is converted to ``ant-1``, and the prefix will be ``ant``.