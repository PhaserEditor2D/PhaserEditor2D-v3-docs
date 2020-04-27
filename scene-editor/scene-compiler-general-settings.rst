
.. include:: ../_header.rst

General settings
~~~~~~~~~~~~~~~~

The |SceneCompiler|_ uses two different set of parameters to refine the code generation of a Phaser_ scene and a prefab file. However, there are general, or shared settings, used in both cases:

.. image:: ../images/scene-compiler-general-settings-04272020.webp
    :alt: General settings.

The parameters:

* **Generate Code**: un-check it you don't want the compiler to compile the file. In the `Using a prefab as a black box <prefab-black-box.html>`_ section there is an example that uses a scene file without code generation.

* **Output Language**: you can select if the scene is compiled into JavaScript or TypeScript.

* **Super Class**: you can force the generated class (prefab or scene), to extends the given class. If empty, the compiler will detect the appropriated class.
