.. include:: ../_header.rst

Simple property type
````````````````````

The **Number**, **String**, and **Boolean** properties are the simplest. The |SceneCompiler|_ generates the properties as class fields. Note that each property is set to the **Default** value:

.. code::

    class Dragon extends Phaser.GameObjects.Sprite {

        constructor(scene, x, y, texture, frame) {
            super(...);

            ...        
        }   

        /** @type {number} */
        maxSpeed = 100;

        /** @type {"fire"|"smoke"|"laser"} */
        flameType = "fire";

        /** @type {(obj:Dragon)=>void} */
        onClickHandler = obj => {};
    }
