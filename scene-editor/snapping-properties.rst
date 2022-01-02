
.. include:: ../_header.rst

Snapping properties
~~~~~~~~~~~~~~~~~~~

The snapping properties allow you to divide the scene into a grid and place the objects in the cells of the grid. This is a very useful technique to keep the objects properly aligned.

.. image:: ../images/scene-editor-snap-properties-04222020.webp
    :alt: Snapping properties.

* **Enabled property**: activates the snapping. You can change the value in the |InspectorView|_ with the ``E`` key.

* **Snapping Width and Height**: is the size of the grid to snap the objects. You can change it in the |InspectorView|_. Also, you can select an object and execute the **Snap To Object Size** command.

Context menu
````````````

The context menu of the scene shows the **Snapping** sub-menu with the snapping commands:

* Toggle Snapping (``E``).

* Snap To Object Size (``W``). This command takes the size of the selected object and sets it as the snapping size values of the scene.

* Move Object Position commands.  These translate the selected object in any direction by the snapping size (``Arrow keys``) or 10x the snapping size (``Shift+Arrow keys``).  If snapping is disabled, these commands translate the selected object by 1 or 10 pixels.

.. image:: ../images/scene-editor-snap-menu-06172020.webp
    :alt: Snapping commands in context menu.
