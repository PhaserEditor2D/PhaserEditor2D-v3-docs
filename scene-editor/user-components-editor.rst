
.. include:: ../_header.rst

User Components Editor
~~~~~~~~~~~~~~~~~~~~~~

.. toctree::
    :maxdepth: 1

    user-components-editor-add-component.rst
    user-components-editor-edit-component.rst

Components (or similar patterns) are widely used in game engines or editors. Many of these tools use custom scripting languages or certain elements of a language (like metadata or attributes) to provide the components information, like properties description, default values, UI rendering, etc... The code of the component has the metadata of the component as part of its implementation.

In |PhaserEditor|_, for now, it is different. We use configurations (JSON) files and a |UserComponentsCompiler|_ that parses these files and generates the JavaScript (or TypeScript) code of the components. Or better say, a part of the component's code, because, just like the |SceneEditor|_ does with the scene files, you can insert your code inside the output of the |UserComponentsCompiler|_.

The information available in the configuration (``*.components``) files are used by the |SceneEditor|_ for building the UI elements needed to add and edit the components of a game object. It is not required by the game at run-time. We strongly recommend to exclude it from the distribution build of your game.