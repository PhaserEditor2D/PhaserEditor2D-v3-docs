
.. include:: ../_header.rst

User Components
---------------

.. toctree::
    :maxdepth: 1

    user-components-create-file
    user-components-editor
    user-components-compiler
    user-components-start-update-methods
    user-components-super-class
    user-components-awake-event
    user-components-instancing
    user-components-in-prefab-object

A Component is a `design pattern <https://gameprogrammingpatterns.com/component.html>`_ that you can use to create reusable code and extend the behavior and data of a game object, using `composition over inheritance <https://en.wikipedia.org/wiki/Composition_over_inheritance>`_.

For example, an **HorizontalMove** component can be added to any kind of enemy object that moves horizontally from one position to another. This component class can be written more or less like this (see the |UserComponentsCompiler|_ section for a real example):

.. code::

    class HorizontalMove {
    
        constructor(gameObject) {

            // in the component, keep a reference to the entity
            this.gameObject = gameObject;
            // in the entity, keep a reference ('horizontalMove') to the component
            this.gameObject.horizontalMove = this;
            // init properties with default values
            this.minX = 0;
            this.maxX = 800;
            this.horizVelocity = 10;
        }

        start() {
            this.gameObject.body.velocity.x = this.horizVelocity;
        }

        update() {

            // the behavior of the component

            const velocity = this.gameObject.body.velocity;

            if (this.gameObject.x < this.minX) {
                velocity.x = Math.abs(this.horizVelocity);
            }

            if (this.gameObject.x > this.maxX) {
                velocity.x = -Math.abs(this.horizVelocity);
            }
        }
    }

In the scene, you can create objects and add the **HorizontalMove** component to them. Then, update the components at every game loop step:

.. code::

    class Level extends Phaser.Scene {

        create() {
            
            // create two objects, alien and spider, and add the HorizontalMove
            // component to both, but with different property values.

            this.alien = this.add.sprite(10, 10, "enemies", "alien");
            const alienMove = new HorizontalMove(this.alien);
            alienMove.minX = 10;
            alienMove.maxX = 100;
            alienMove.horizVelocity = 40;            
            alienMove.start();
        
            this.spider = this.add.sprite(80, 100, "enemies", "spider");
            const spiderMove = new HorizontalMove(this.spider);
            spiderMove.minX = 50;
            spiderMove.maxX = 200;
            spiderMove.horizVelocity = -20;
            spiderMove.start();
        }

        update() {
            
            // update the HorizontalMove component of each object

            this.alien.horizontalMove.update();
            this.spider.horizontalMove.update();

             // in a real case, the component can register
             // a listener to the UPDATE event of the scene.
        }
    }

In |PhaserEditor|_, we provide a way to create game object components (we name it **User Components**, to make a difference with the built-in Phaser components) and use them in the |SceneEditor|_. The prefabs_ system is another way to create reusable behaviors and data but has the limitation that it uses inheritance.

Like the |SceneEditor|_, we provide a |UserComponentsEditor|_.

The |UserComponentsEditor|_ allows you to create User Components configuration files. A User Components configuration file (``*.components``) contains a list of component configurations that are compiled into JavaScript (or TypeScript) code. It is pretty similar to the |SceneCompiler|_.

 