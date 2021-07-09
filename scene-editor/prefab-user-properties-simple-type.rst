.. include:: ../_header.rst

Simple property type
````````````````````

The **Number** and **String** properties are the simplest. The |SceneCompiler|_ generates the fields like this:

.. code::

    class Dragon extends Phaser.GameObjects.Sprite {

        constructor(scene, x, y, texture, frame) {
            super(...);

            ...

            /** @type {number} */
            this.maxSpeed = 100;
            /** @type {"fire"|"smoke"|"laser"} */
            this.flameType = "fire";
            /** @type {(obj:Dragon)=>void} */
            this.onClickHandler = obj => {};
        }            
    }
