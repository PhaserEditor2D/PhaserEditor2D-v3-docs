.. include:: ../_header.rst

Initializing other properties
`````````````````````````````

It's possible you want to change other properties of the prefab instance, in dependence of the values of the user properties. For example, if the **flameType** property value is ``"fire"``, then you set the mass of the body to 50. Because the property values are not set in the constructor, you can listen to the ``prefab-awake`` event and setup the body properties:

.. code::

    class Dragon extends Phaser.GameObjects.Sprite {
        
        constructor(scene,...) {
            ...

            /* START-USER-CTR-CODE */
            scene.events.once("prefab-awake", this.awake, this);
            /* END-USER-CTR-CODE */
        }

        /** @type {"fire"|"smoke"|"laser"} */
        flameType = "fire";

        /* START-USER-CODE */

        awake() {
            
            // at this point, the instance was created and the user properties set with new values

            if (this.flameType === "fire") {
                this.body.mass = 50;
            }
        }

        /* END-USER-CODE */
    }

The ``prefab-awake`` event is not part of the Phaser_ API. It's a custom event the |SceneEditor|_ uses as convention. When the |SceneCompiler|_ generates the code of a prefab instantiation, it also generates the code for emitting the ``prefab-awake`` event. This event is emitted just after all properties are set.

.. code::

    class Level extends Phaser.Scene {
    ...
        create() {            
            ...
            
            // dragon
            const dragon = new Dragon(this, 370, 218);
            this.add.existing(dragon);

            ...

            // dragon (prefab fields)
            dragon.maxSpeed = 300;
            dragon.flameType = "smoke";
            dragon.onClickHandler = obj => this.selectDragon(obj);
            dragon.emit("prefab-awake");
            ...
        }
    ...
    }

As alternative to the ``prefab-awake`` event, you can listen the ``Phaser.Scenes.Events.UPDATE`` event. It is emitted by the scene at every tick, so you just need to register the listener to be called **once**:

.. code::

    scene.events.once("Phaser.Scenes.Events.UPDATE", this.start, this);

A key difference of the  **UPDATE** event is that it is fired after all objects are created. You can use it when your prefab depends on other objects of the scene.