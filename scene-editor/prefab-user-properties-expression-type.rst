.. include:: ../_header.rst

Expression property type
````````````````````````

The Expression type is the way you have to create a property of any type. You can use any type for the values and any JavaScript expression for setting the values. For example, you can use it to create a property to reference an event handler (or callback function):

.. image:: ../images/prefab-user-props-expression-param-06062020.webp
    :alt: Expression property declaration.

The |SceneCompiler|_ generates Expression properties like this:

.. code::

    class Dragon extends Phaser.GameObjects.Sprite {
        
        constructor(..) {
            ...
            /** @type {(obj:Dragon)=>void} */
            this.onClickHandler = obj => {};
        }
    }
