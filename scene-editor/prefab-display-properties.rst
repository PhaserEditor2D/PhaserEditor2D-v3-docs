
.. include:: ../_header.rst

Prefab instance display properties
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When you create a prefab instance, the |OutlineView|_ shows the variable's name as the display name of the object.

Let's see this example.  

The variable name of the button is **buttonDown**:

.. image:: ../images/scene-editor-prefabs-display-name-variable-name-1.webp
  :alt: The variable name.

... and the |OutlineView|_ uses the same name for labeling the object:

.. image:: ../images/scene-editor-prefabs-display-name-outline-1.webp
  :alt: The label in the Outline view.

However, you can change the labeling of the object with a more descriptive name. You can set the **Object Display Name** in the **Prefab Display** properties section of the prefab's scene:

.. image:: ../images/scene-editor-prefabs-display-name-definition.webp
  :alt: Object display name definition.

The display name for the button instances will be ``Button - ${action}``. It is a name template with placeholders, and the ``${action}`` placeholder is filled with the value of the **Action** prefab property of the button.

The ``action`` name is the variable name of the user property ``Action``. You can hover the mouse in the property to get the property information:

.. image:: ../images/scene-editor-prefab-display-name-property-tooltip-20231205.webp
  :alt: The info of a prefab property.

Now, the buttons are shown in the |OutlineView|_ with the new display names. Note the ``${action}`` expression is replaced by ``UP``, ``DOWN``, or ``FIRE`` depending on the value of the **Action** property:

.. image:: ../images/scene-editor-prefabs-display-name-outline-2.webp
  :alt: The new display name of the objects in the outline view.

This technique is particularly useful when you add objects but their variable names are not relevant to the game implementation. Or when you want to provide more detailed information about the objects.

This is the case of many |ScriptNodes|_:

.. image:: ../images/scene-editor-prefabs-display-name-script-node-20231205.webp
  :alt: Using the prefab display name in the script nodes.

In addition to the ``${propName}`` syntax, you can use a ``#{propName}`` expression. It will be replaced by the name of the property (``propName``) if the value of the property is ``true``, ``undefined``, ``""``, or the equivalent in JavaScript.

This is an example. The display name is ``Collide #{up} #{down}``. If the value of the ``up`` property is ``true`` and the ``down`` property is ``false``, then the final display name will be ``Collide #up``.

It means you can use this syntax for showing "tags".