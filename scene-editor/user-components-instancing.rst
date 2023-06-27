
.. include:: ../_header.rst

Adding User Components to a Game Object
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can add a user component to an object (entity)  in two ways: manually, and with the |SceneEditor|_.

Adding a component to an object manually:

.. code::

    const platform = ...;
    const move = new HorizontalMove(platform);
    move.minX = 100;
    move.maxX = 400;

The constructor of the user component **HorizontalMove** adds the component to the object. You can keep a reference to the component or get the component from the game object, with the **getComponent** method:

.. code::

    const move = HorizontalMove.getComponent(platform);

However, the interesting is adding components to objects in the |SceneEditor|_.

This is possible with the **Add User Component** command:

1. Select an object.
2. Execute the **Add User Component** command (``M``). It is also available in the context menu **Scripting** |-| **Add User Component**.
   
   .. image:: ../images/scene-editor-user-components-obj-add-component-1-20230627.webp
      :alt: Add User Component command.

3. The command opens a dialog with all the components defined in the project (grouped by the ``*.components`` files). Select the one you want to add:
  .. image:: ../images/scene-editor-user-components-obj-add-component-2-20230627.webp
    :alt: Select user component.

4. The |InspectorView|_ provides a new **HorizontalMove** section with the properties of the component:

  .. image:: ../images/scene-editor-user-components-show-components-20230627.webp
    :alt: Showing the user components of an object.

Generating the code for a component in an object
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The `user components compiler <user-components-compiler.html>`_ will generate the code to create the component, just like if you write it by hand:

.. code::

    // bridge2 (components)
    const bridge2HorizontalMove = new HorizontalMove(bridge2);
    bridge2HorizontalMove.horizVelocity = 100;
    bridge2HorizontalMove.minX = 10;
    bridge2HorizontalMove.maxX = 400;

Actions for a component
^^^^^^^^^^^^^^^^^^^^^^^

These are the actions associated to the user component of an object:

.. image:: ../images/scene-editor-user-components-section-menu-20230627.webp
  :alt: User component section's menu.

* **Select Objects With HorizontalMove**: selects in the scene all objects containing the **HorizontalMove** component.
* **Open Definition Of HorizontalMove**: opens the definition of the component in the `User Components Editor <./user-components-editor.html>`_.
* **Move Up**, **Move Down**: changes the order of the component.
* **Delete**: deletes the component from the object.

Browsing the User Components in a scene
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You can take an overview of all the user components in all the objects of the scene with the **Browse User Components** (``Shift+M``) command: 

.. image:: ../images/scene-editor-user-components-browse-1-20230627.webp
  :alt: Browse User Component command.

.. image:: ../images/scene-editor-user-components-browse-2-20230627.webp
  :alt: User components in the scene.