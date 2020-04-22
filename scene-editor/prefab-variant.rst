
.. include:: ../_header.rst

Prefab variants
~~~~~~~~~~~~~~~

A |PrefabVariant|_ is a prefab_ that extends other prefab_. This is a concept similar to the |Unity|_ **prefab variants** so we use the same name. However, like everything else in the |SceneEditor|_, the best way to understand the |PrefabVariant|_ is looking into the generated code. Then you realize that a variant of a prefab_ is a sub-class of the prefab_ class. 

A |PrefabVariant|_ inherits the properties and values of the base prefab_, however, you can can unlock the properties and modify them.

`Learn more about set unlock a prefab property <prefab-set-properties.html>`_.

You can create a |PrefabVariant|_ very easy, the only thing you need is to use a prefab_ as the `prefab object <prefab-object.html>`_ of the prefab_ file.

Let's say we want to create a purple skinned |PrefabVariant|_ of the **Dragon** prefab_. These are the steps:

#. Create a new prefab_ file, named **PurpleDragon**. Learn `how to create a prefab file <prefab-new-file.html>`_.

#. Drop the **Dragon** prefab_ on the scene. This creates a |PrefabInstance|_ that is the `prefab object <prefab-object.html>`_ of the file.

#. Unlock the `texture property <texture-properties.html>`_ of the object and change it to the purple dragon texture.

#. Save the file.

#. Open the **Level** scene file, and look in the |BlocksView|_ there are the **Dragon** prefab_ and the **PurpleDragon** prefab_.

#. TODO