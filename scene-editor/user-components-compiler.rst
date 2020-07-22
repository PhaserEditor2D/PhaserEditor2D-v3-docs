
.. include:: ../_header.rst

The User Components compiler
````````````````````````````

The |UserComponents|_ are configured in ``*.components`` files and used by the |SceneEditor|_. It is a concept of |PhaserEditor|_, not Phaser_. So we use the same |SceneEditor|_ philosophy, we compiles our custom configurations into plain, readable, fully Phaser_ compatible code.

This how an **HorizontalMove** is compiled into JavaScript:

The component information:

.. image:: ../images/scene-editor-user-components-demo-info-f_07212020.webp
    :alt: Component metadata.    

The generated code:

.. code::

    // You can write more code here

    /* START OF COMPILED CODE */

    class HorizontalMove {
        
        constructor(gameObject) {
            HorizontalMove.setComponent(gameObject, this);
            
            /** @type {Phaser.GameObjects.Image} */
            this.gameObject = gameObject;
            /** @type {number} */
            this.horizVelocity = 0;
            /** @type {number} */
            this.minX = 0;
            /** @type {number} */
            this.maxX = 3070;
            
            /* START-USER-CTR-CODE */
            // Write your code here.
            /* END-USER-CTR-CODE */
        }
        
        /** @returns {HorizontalMove} */
        static getComponent(gameObject) {
            return gameObject["__HorizontalMove"];
        }
        
        static setComponent(gameObject, horizontalMove) {
            gameObject["__HorizontalMove"] = horizontalMove;
        }
        
        static hasComponent(gameObject) {
            return "__HorizontalMove" in gameObject;
        }
        
        /* START-USER-CODE */
        // Write your code here.
        /* END-USER-CODE */
    }

    /* END OF COMPILED CODE */
    // You can write more code here


TODO select output language in settings.