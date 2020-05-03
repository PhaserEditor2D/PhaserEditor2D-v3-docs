.. include:: ../_header.rst

The scene compiler
------------------

.. toctree::
    
    scene-compiler-executing-compiler
    scene-compiler-user-code
    scene-compiler-general-settings    
    scene-compiler-scene-settings
    scene-compiler-prefab-settings

Traditionally, a game engine has its file format to create scenes and part of its API is focused on the integration with a scene editor.

Phaser_ is not a traditional game engine, it is a framework, and is not attached to any particular tool. To create a Phaser_ game you only need a simple text editor.

Of course, Phaser_ provides API to interact with some widely used, third-party formats like texture atlas, tilemap, bitmap fonts, etc... But there is not a complete scene format where all the elements could be integrated.

For the |SceneEditor|_, we use a custom scene-file format, but instead of creating a custom library to parse and create the Phaser_ scenes on the fly, we created a compiler.

The |SceneCompiler|_ takes as input the custom scene files (based on JSON) and generates a well written Phaser_ code. Look it like if the |SceneCompiler|_ writes the Phaser_ code for you.

This has some advantages:

* Your game doesn't need to load an extra, third-party library.

* You have full comprehension of how the scene objects are created.

* A modern JavaScript editor can process the scene code and integrates it with the content assist tools.

* You can customize certain aspects of the generated code and/or insert your code.