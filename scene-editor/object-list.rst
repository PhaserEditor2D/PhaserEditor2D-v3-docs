
.. include:: ../_header.rst

Object List
-----------

Often, you need to group objects with a common property or type, or with a common goal in the game. For example, you need to group the enemy objects, the pickable items, the platform objects, so you can test if the player collides with them.

For this purpose, the |SceneEditor|_ allows grouping the objects of the scene into a JavaScript array.

You can create an `Object List`_ by dropping a `List built-in block <blocks-view-integration.html>`_ on the scene:

.. image:: ../images/scene-editor-object-list-add-from-blocks-20230516.webp
  :alt: Add object list from the Blocks view.

Or you can create a new list when adding an object to the list:

.. image:: ../images/scene-editor-object-list-new-list-from-section-20230516.webp
  :alt: Create new list in the Lists section.

.. image:: ../images/scene-editor-object-list-add-new-2-20230516.webp
  :alt: Enter the name of the new list.

To add an object to an `Object List`_, select the object and look for the **Lists** section. Click on the drop-down of the **Lists** property, it shows the lists availables in the scene with the option of add the selected object to a list or remove it from a list:

.. image:: ../images/scene-editor-object-list-add-object-20230516.webp
  :alt: Add object to the list.

The |OutlineView|_ shows the Object Lists of your scene, in the **Lists** category. It also shows the objects of every list:

.. image:: ../images/scene-editor-object-list-outline-20230516.webp
  :alt: Object lists in the outline.

You can remove items from a list by selecting them in the outline and pressing the **Delete** command (``Del``).

Also, you can sort the items in the list with the Move commands, just like you order the game objects in the scene:

.. image:: ../images/scene-editor-object-list-order-commands-20230627.webp
  :alt: Sorting commands.

You can locate the a list item in the scene. Select the list item, and in the **List Item** section of the |InspectorView|_, click on the **Select Game Object** button:

.. image:: ../images/scene-editor-object-list-item-section-20230516.webp
  :alt: List Item section.

Object List properties
~~~~~~~~~~~~~~~~~~~~~~

The `Object List`_ type is not part of the |PhaserAPI|_, it is something introduced by the |SceneEditor|_. In the **Variable** section of the |InspectorView|_, it shows the `Variable properties <variable-properties.html>`_:

.. image:: ../images/scene-editor-object-list-section-20230516.webp
  :alt: Object List properties.

In this section you can modify the name of the list, see the inferred type of the list items, and change the scope (``CLASS`` by default) of the object list variable.

Object List code generation
~~~~~~~~~~~~~~~~~~~~~~~~~~~

The code generated by the |SceneCompiler|_, to create a list, is like this:

.. code::

    this.pickableItems = [melon, melon_1, melon_2, bomb, bomb_1, bomb_2];

If the output language is TypeScript, the |SceneCompiler|_ generates a field declaration for the list:

.. code::
        
    private pickableItems: Array<Melon|Bomb>;

Note that the |SceneCompiler|_ infers the type of the array elements: a union of ``Melon`` and ``Bomb``, that are prefabs_. It also infers the type of the elements if are Phaser_ built-in types:

.. code::

    private parallax: Phaser.GameObjects.Image[];

This detailed type declaration of the arrays allows that code editors like |VSCode|_ can provide a smarter coding experience.

Object List vs Phaser Group
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Traditionally, Phaser_ uses the `Group game object <https://photonstorm.github.io/phaser3-docs/Phaser.GameObjects.Group.html>`_ to join objects around a common purpose. But grouping is not the only feature of a `Group game object`_:

* It implements an object pool.

* Is a data structure with methods for sorting and iterate the items.

* Can be used as a proxy to modify the state of the items.

* To call a method of the items.

* To apply game-related global operations to the items.

So, why the |SceneEditor|_ is not using the `Group game object`_?

#. Many of the features of a `Group game object`_ are especially helpful to implement the logic of the game, but what a level maker needs is just to organize the objects, we think. 

#. The `Group game object`_ type is not parameterized. A code editor type-inference/auto-completion engine works much better with a simple JavaScript array. When you write ``const enemies = [enemy1, enemy2, ...]``, a code editor like |VSCode|_ can infer the type of the array items.

#. Even for a human, a simple JavaScript array could be more comprehensible. 

#. If you need a `Group game object`_, you can create it with the array of objects generated by the |SceneEditor|_:

    .. code::

        const pickableItemsGroup = this.add.group(this.pickableItems);
