
.. include:: ../_header.rst

Script Nodes
------------

.. toctree::

    script-node-create
    script-node-class
    script-node-basic-scripts-project
    script-node-prefab
    script-node-properties

A |ScriptNode|_ is a new type of object. It isn't a display object, else a logical object you can use with different purposes, especially, for expressing simple and complex behaviors.

Until now, |UserComponents|_ were the way you had to add extra funcitonality to a game object. The |ScriptNode|_ is a more powerful and general tool, that you can use with the same purpose. 

Basically, a |ScriptNode|_ is a logical object you can add to an scene, a game object, or another |ScriptNode|_. But what is even more exciting, is that you can make reusable and extensible |ScriptNodes|_ in the same way you make reusable and extensible game objects: using prefabs_.

This means, you can make a prefab of a |ScriptNode|_, add custom properties, create variants of the prefab, create nested prefabs, and append |ScriptNodes|_ to prefab instances.

This allows expressing complex behaviors combining logical building blocks (|ScriptNode|_ prefabs) in a hierarchical structure.

This concept of |ScriptNodes|_ is inspired by the `visual programming languages <https://en.wikipedia.org/wiki/Visual_programming_language>`_ and concepts like the `behavior tree <https://en.wikipedia.org/wiki/Behavior_tree_(artificial_intelligence,_robotics_and_control)>`_. However, we don't pretend to create a complete, full-featured, visual language. Our advice is using the |ScriptNodes|_ for making the blocks of repeated behaviors in your game. You can use it for dealing with the UI interface, menu screens, intro screens. You can use it in your gameplay, but not by combining a lot of general-purpose blocks, else by combining blocks you did especifically for your gameplay.

An argument about the advantage of using a visual scripting language is that creators with no traditional programming experience can make a game. But our concept with the |ScriptNodes|_, is that you, the JavaScript programmer, can implement the script nodes "framework" for your game, and deliver it to the game level designer for connecting the scripts with the game objects and scenes. A good start could be the `script-nodes-basic <http://github.com/PhaserEditor2D/script-nodes-basic>`_ project.