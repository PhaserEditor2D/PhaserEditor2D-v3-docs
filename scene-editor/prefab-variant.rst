
.. include:: ../_header.rst

Prefab variants
~~~~~~~~~~~~~~~

A |PrefabVariant|_ is a prefab_ that extends other prefab_. This is a concept similar to the |Unity|_ **prefab variants** so we use the same name. However, like everything else in the |SceneEditor|_, the best way to understand the |PrefabVariant|_ is looking into the generated code. Then you realize that a variant of a prefab_ is a sub-class of the prefab_ class. 

A |PrefabVariant|_ inherits the properties and values of the base prefab_, however, you can unlock the properties and modify them.

`Learn more about unlock a prefab property <prefab-set-properties.html>`_.

You can create a |PrefabVariant|_ very easy, the only thing you need is to use a prefab_ as the `prefab object <prefab-object.html>`_ of the prefab_ file.

Let's say we want to create a purple-skinned |PrefabVariant|_ of the **Dragon** prefab_. These are the steps:

#. Create a new prefab_ file, named **PurpleDragon**. Learn `how to create a prefab file <prefab-new-file.html>`_.

#. Drop the **Dragon** prefab_ on the scene. This creates a |PrefabInstance|_ that is the `prefab object <prefab-object.html>`_ of the file.

    .. image:: ../images/scene-editor-prefab-variant-1-04222020.webp
        :alt: Create prefab object with Dragon prefab.

#. Unlock the `texture property <texture-property.html>`_ of the object and change it to the purple dragon texture. Save the file.

    .. image:: ../images/scene-editor-prefab-variant-2-04222020.webp
        :alt: Change the prefab object texture.

#. Open the **Level** scene file, and look in the |BlocksView|_ there are the **Dragon** prefab_ and the **PurpleDragon** prefab_. Drop the **PurpleDragon** prefab_ on the scene. It will create a new, purple, |PrefabInstance|_. 

    .. image:: ../images/scene-editor-prefab-variant-3-04222020.webp
        :alt: Create a green and purple dragons.

#. But you want to reduce the size of both dragons. To do this, you change the scale of the X-axis of the **Dragon** prefab_. It will affect both instances, the **Dragon** and **PurpleDragon** instances, because the **PurpleDragon** is a variant of the now scaled **Dragon** prefab_.

    .. image:: ../images/scene-editor-prefab-variant-4-04222020.webp
        :alt: The new scale is applied to both instances.

.. warning::
    
    A common error when making a prefab variant is to load the script files in the |AssetPackEditor|_, using the **Script** file type. It can cause a "missing class" error at the execution of the game. The problem is that the scripts files are loaded and executed in any order. The solution is to add the scripts using the **Scripts** file type of the |AssetPackEditor|_. It allows to set the execution order of the scripts: the prefab script should be executed before the prefab variant script.

    `Learn more about the execution order of the scripts <../asset-pack-editor/import-scripts.html#execution-order-of-the-scripts>`_