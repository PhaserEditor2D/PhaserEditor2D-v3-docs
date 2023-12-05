
.. include:: ../_header.rst

Making a ScriptNode prefab
~~~~~~~~~~~~~~~~~~~~~~~~~~

The power of the script nodes is that you can create prefabs of them. Prefabs are a central feature of the editor. You are used to create prefabs of your characters, game items, UI elements. Prefabs provide a flexible architecture (`nested prefabs <./prefab-nested.html>`_, `prefab variants <./prefab-variant.html>`_, `prefab properties <./prefab-user-properties.html>`_, `appendable prefabs <./prefab-instance-children.html>`_) for creating reusable objects. And now it is also available for you to create the behaviors (or part of the beaviors) of your game.

You can create a script node prefab in the same way you create a prefab of a game object:

1. `Create a prefab file <./prefab-new-file.html>`_.
2. `Add a script node to the scene <./script-node-create.html>`_.

If you add a script node prefab to a prefab scene, then it creates a prefab variant. It works the same as the game object prefabs. You can add custom properties.

If you are using the built-in `ScriptNode class <./script-node-class.html>`_ (what we recommend you to do), then you can implement any of the methods provided by that class, like the **awake** or **execute** methods.

The code generated for a script node prefab looks like this:

.. code::

    // You can write more code here

    /* START OF COMPILED CODE */

    import OnEventScript from "./OnEventScript";
    import ScriptNode from "./ScriptNode";
    import Phaser from "phaser";
    /* START-USER-IMPORTS */
    /* END-USER-IMPORTS */

    export default class OnPointerDownScript extends OnEventScript {

        constructor(parent: ScriptNode | Phaser.GameObjects.GameObject | Phaser.Scene) {
            super(parent);

            // this (prefab fields)
            this.eventName = "pointerdown";

            /* START-USER-CTR-CODE */
            // Write your code here.
            /* END-USER-CTR-CODE */
        }

        /* START-USER-CODE */

        override awake(): void {

            this.gameObject.setInteractive();
            
            super.awake();
        }

        /* END-USER-CODE */
    }

    /* END OF COMPILED CODE */

    // You can write more code here

The above code is TypeScript. It is the implementation of the **OnPointerDownScript**, which is a `prefab variant <./prefab-variant.html>`_ of the **OnEventScript** prefab. Both prefabs are part of the `Basic Scripts project <script-node-basic-scripts-project.html>`_.