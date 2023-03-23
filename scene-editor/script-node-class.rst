
.. include:: ../_header.rst

The ScriptNode class
~~~~~~~~~~~~~~~~~~~~

When you create an instance of a |ScriptNode|_, the |SceneCompiler|_ generates a code like this:

.. code::

 new ScriptNode(parent);

It means it creates an instance of the ``ScriptNode`` class. But this class is not part of the Phaser_ API, it is a class you should code yourself.

The protocol of this class is simple, it needs a constructor that receives a parent argument. Something like this:

.. code::

 class ScriptNode {

 constructor(parent) {
 }
 }

It is simple, but if you need, you can create a prefab with more features, like handling children, events, etc...

The good news is that |PhaserEditor|_ can generate the default implementation of this class for you, with basic features:

1. In the |FilesView|_, select the folder when you want to add the class file.
2. Open the |CommandPalette|_ (``Ctrl+K``) and search for ``script``.
3. Select the command with the desired format (TypeScript, JavaScript, ES modules,...).
4. **Execute** the command and it generates the class file in the selected folder.

.. image:: ../images/script-node-create-script-node-class-1-20230323.webp
 :alt: Create ScriptNode class commands.

This built-in class the editor provides contains a couple of features:

* Keeps a reference to the scene, the game object, and the parent.
* Manages an array of the children nodes.
* Registers listeners to the scene and game object for implementing the **awake**, **start**, **update**, and **destroy** events. It follows the same logic as the `User Components events <./user-components-super-class.html>`_.
* Provides an interface for "action nodes".

The parent
``````````

When a new instance of the ``ScriptNode`` class is created, it receives a parent node as an argument. This parent could be a scene, a game object, or another script node.

The script node instance keeps a reference to the parent, but also keeps a reference to the game object and the scene. Sure, if the node is added to a scene, the game object reference is not updated, it keeps ``undefined``.

Related to the parent, the class provides the following properties:

- ``parent()``: it's type is ``Phaser.Scene | Phaser.GameObjects.GameObject | ScriptNode``.
- ``gameObject()``: it's type is ``Phaser.GameObjects.GameObject | undefined``.
- ``scene()``: it's type is ``Phaser.Scene``.

The children
````````````

The ``ScriptNode`` class has an array of nodes for keeping the children. This array is updated when a new node is created. It also provides some related methods:

* ``children ()``: A property for iterating the children.
* ``add()``: A method for adding new children. This method is called automatically when a new child is created.

The events
``````````

The ``ScriptNode`` class provides a couple of methods for handling special events that may help you on implementing the behaviors. It works just like the `User Components events`_. The methods are:

- ``awake()``: It is called when all the objects of the scene are created. The values of the user properties (prefab) will be available at this time, so you can override this method for making computations that require the value of the properties. It works like the `UserComponent "awake" method <user-components-awake-event.html>`_.
- ``start()``: It is called the first time the scene updates.
- ``update()``: It is called each time the scene updates.
- ``destroy()``: It is called when the game object is destroyed or the scene is shut down.


The action methods
``````````````````

We find it convenient to establish a protocol for action script nodes. An action script is a script node that will execute a certain task. For that purpose, the class provides the following methods:

- ``execute()``: Contains the code of the action.
- ``executeChildren()``: Executes the children.

In the next chapter, we mention a project with basic node implementations that you can include in your game. These scripts provide a protocol or style you can adopt for your game.