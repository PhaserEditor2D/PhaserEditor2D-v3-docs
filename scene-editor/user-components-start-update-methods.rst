
.. include:: ../_header.rst

Starting and updating the User Components
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Many |UserComponents|_ you will create will implement certain behavior of an object. This behavior should be initialized and later updated at every step of the game loop.

Game engines like `Unity <https://unity.com>`_, that support a similar design pattern, `use a Start and Update methods <https://docs.unity3d.com/Manual/CreatingAndUsingScripts.html>`_ to implement the behavior of the component.

The Phaser_ framework does not provide a similar approach, components are not part of the Phaser_ API. However, Phaser_ provides a lot of events that you can listen and implement the gameplay. For example, you can simulate the Unity scripting using the |UserComponents|_ and the Phaser_ events in this way:

.. code::

    class HorizontalMove {
        
        constructor(gameObject) {        
            ...
            
            /* START-USER-CTR-CODE */

            const scene = this.gameObject.scene;

            scene.events.once(Phaser.Scenes.Events.UPDATE, this.start, this);
            scene.events.on(Phaser.Scenes.Events.UPDATE, this.update, this);

            /* END-USER-CTR-CODE */
        }

        ...
                
        /* START-USER-CODE */

        start() {
            
            // write the start code here
        }

        update() {

            // write the update code here
        }

        /* END-USER-CODE */
    }

Look in the constructor, you can register listeners to the scene ``UPDATE`` event. A listener that is executed once is used to call the **start** method. A listener that is executed at every scene update is used to call the **update** method.

Also, if the game object could be destroyed in the game, you should remove the **update** listener:

.. code::

        this.gameObject.on(Phaser.GameObjects.Events.DESTROY, () => {
            scene.events.off(Phaser.Scenes.Events.UPDATE, this.update, this);
        });