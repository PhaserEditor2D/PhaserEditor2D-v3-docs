.. include:: ../_header.rst

Preview active scene
~~~~~~~~~~~~~~~~~~~~

The |SceneEditor|_ runs a Phaser scene inside it, which means, it shows you a pixel-perfect image of the scene you are creating. But sometimes you want to see the scene in action, with the physics, the inputs, the animations. For this purpose there is a trick: the **Preview Scene** (``Ctrl+0``) command.

This command opens your game in the default (or configured) browser but adds the `start` parameter to the URL, and sets the name of the current scene as value.

For example, if you are editing the **LevelCompleted** scene, and you run the **Preview Scene** command, the editor launches the browser and opens the URL: 

``http://localhost:<port>/start=LevelCompleted``

Now, in the code of your game, you have to read the value of the `start` parameter and start the scene with the same name. This is something you have to code manually, however, the built-in Phaser Editor 2D project templates contain the code for reading the ``start`` parameter. It looks like this:

.. code::

    if (process.env.NODE_ENV === "development") {

        const start = new URLSearchParams(location.search).get("start");

        if (start) {

            console.log(`Development: jump to ${start}`);
            this.scene.start(start);
            return;
        }
    }

The ``process.env.NODE_ENV === "development"`` expression is replaced by webpack_ at compile time, by ``true`` or ``false`` in regarding you are working on a development or production build.

You can place that code in the **Preloader** scene or any other scene after setting up a consistent game state.

