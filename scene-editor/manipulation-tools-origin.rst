.. include:: ../_header.rst

Origin tool
~~~~~~~~~~~

With this tool, you can edit the origin of an object. You can activate it in the context menu, the |MainToolbar|_, or with the ``O`` key.

In Phaser_ v3, the rotation pivot of `containers <container-object.html>`_ is fixed at ``x=0, y=0``. You cannot change it. However, the `origin tool`_ simulates a change of the pivot by moving around the children of the `container <container-object.html>`_ but keeping the same global position.

.. image:: ../images/scene-editor-tools-origin-05242020.webp
    :alt: Origin tool.