
.. include:: ../_header.rst

The Basic Scripts project
~~~~~~~~~~~~~~~~~~~~~~~~~

In the previous section, we covered how to create the ``ScriptNode`` class. It is very basic, it is the minimum you need for using the |ScriptNodes|_. For that reason, we created a project with other basic script nodes you can use in your game: the `script-nodes-basic <http://github.com/PhaserEditor2D/script-nodes-basic>`_ project.

It is a project in development. In the way we get more experience making games with the script nodes, we may change it or increment the number of scripts on it.

Following we present you a summary of the project. You can learn more on the project's site:

`github.com/PhaserEditor2D/script-nodes-basic <https://github.com/PhaserEditor2D/script-nodes-basic>`_

There are three groups of scripts: **Base**, **Triggers**, and **Actions**.

Base scripts
''''''''''''

Contain basic/abstract functionality. Often, you will create prefab variants of them (extend them).

* **ScriptNode** - the base class for all the scripts.
* **SpriteScriptNode** - base prefab for script nodes accessing sprite objects.
* **RootScriptNode** - a script node that registers itself into the game object and can be used as a container of other scripts.

Trigger scripts
'''''''''''''''

These scripts listen to a certain event. When the event is triggered, then execute the children, which are actions.

* **OnEventScript** - listens the given ``eventName`` object's event.
* **OnKeyboardEventScript** - listens the given ``eventName`` keyboard's event.
* **OnPointerDownScript** - a prefab variant of **OnEventScript**, listening the ``pointerdown`` event.
* **OnSceneAwakeScript** - listens the ``scene-awake`` event of the scene.

Action scripts
''''''''''''''

Actions are scripts that are executed manually or by other nodes, like triggers or other actions.

* **CallbackActionScript** - executes the given ``callback`` expression.
* **StartSceneActionScript** - starts the given ``sceneKey`` scene.
* **ExecActionScript** - executes the given ``targetAction``.

