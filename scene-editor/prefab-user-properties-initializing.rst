.. include:: ../_header.rst

Initializing other properties
'''''''''''''''''''''''''''''

It's possible you want to change other properties of the prefab instance, in dependence of the values of the user properties. For example, if the **flameType** property value is ``"fire"``, then you set the mass of the body to 50. Because the property values are not set in the constructor, you can listen to the scene update event and setup the body properties:

.. code::

    class Dragon extends Phaser.GameObjects.Sprite {
        
        constructor(scene,...) {
            ...

            /* START-USER-CTR-CODE */
            scene.events.once(Phaser.Scenes.Events.UPDATE, this.start, this);
            /* END-USER-CTR-CODE */
        }

        /* START-USER-CODE */

        start() {
            
            // at this point, the instance was created and the user properties set with new values

            if (this.flameType === "fire") {
                this.body.mass = 50;
            }
        }

        /* END-USER-CODE */
    }

The **UPDATE** event is emitted by the scene at every tick, so we just need to register the listener to be called **once**.
