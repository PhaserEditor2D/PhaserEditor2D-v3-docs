
.. include:: ../_header.rst

The Core scripts project
~~~~~~~~~~~~~~~~~~~~~~~~~

In the previous section, we covered how to create the ``ScriptNode`` class. It is very basic, it is the minimum you need for using the |ScriptNodes|_. For that reason, we created a project with other basic script nodes you can use in your game: the `scripts-core <http://github.com/PhaserEditor2D/phasereditor2d-scripts-core>`_ project.

It is a project in development. In the way we get more experience making games with the script nodes, we may change it or increment the number of scripts on it.

Following we present you a summary of the project. You can learn more on the project's site:

`github.com/PhaserEditor2D/scripts-core <http://github.com/PhaserEditor2D/phasereditor2d-scripts-core>`_

There are three groups of scripts: **Base**, **Events**, and **Actions**.

Base scripts
''''''''''''

Contains basic/abstract functionality. Often, you will create prefab variants of them (extend them).

* **ScriptNode** - the base class for all the scripts.
* **SpriteScriptNode** - base prefab for script nodes accessing sprite objects.
* **RootScriptNode** - a script node that registers itself into the game object and can be used as a container of other scripts.

Event scripts
'''''''''''''

These scripts listen to certain events. When the event is emitted, then executes the children, which are actions.

* **OnEventScript** - registers to the given ``eventEmitter`` and listens to the given ``eventName`` event.
* **OnSceneAwakeScript** - listens the ``scene-awake`` event of the scene.
* **OnPointerDownScript** - listens to the ``pointerdown`` event of the game object.

Action scripts
''''''''''''''

Actions are scripts that are executed manually or by other nodes, like events or other actions. This is important, an action script doesn't execute by itself.

* **CallbackActionScript** - executes the given ``callback`` expression.
* **StartSceneActionScript** - starts the given ``sceneKey`` scene.
* **ExecActionScript** - executes the given ``targetAction``.
* **EmitEventActionScript** - the given ``eventEmitter`` emits the given ``eventName``.
* **AlertActionScript** - shows the browser's alert dialog, with the given ``message``.
* **ConsoleLogActionScript** - logs the given ``message`` to the browser's console.
* **DestroyActionScript** - destroys the game object.

