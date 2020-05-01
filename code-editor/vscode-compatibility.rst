
.. include:: ../_header.rst

Visual Studio Code compatibility
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The |vscode|_ editor is prefect to write the code of the |PhaserEditor|_ games. First, because it is an awesome editor. Second, because the projects created by |PhaserEditor|_ contains the files needed by |vscode|_ to provide a good coding experience with Phaser_.

Project structure
`````````````````

The JavaScript project templates include these files:

.. image:: ../images/code-editor-vscode-js-05012020.webp
    :alt: JavaScript project.

#. The file ``lib/phaser.js``. It is the Phaser_ runtime.

#. The Phaser_ type definition files: ``types/phaser.d.ts`` and ``types/matter.d.ts``. Those files are provided by Phaser_ and are used by the |vscode|_ to "understand" the |PhaserAPI|_.

#. The `project configuration <https://code.visualstudio.com/docs/languages/jsconfig>`_ file: ``jsconfig.json``.

 If it is a TypeScript project, then it includes the `tsconfig.json file <https://www.typescriptlang.org/docs/handbook/tsconfig-json.html>`_, instead of the ``jsconfig.json`` file.

Code Server
```````````

If you are using a remote instance of |PhaserEditor|_, you can try `Code Server <https://github.com/cdr/code-server/>`_. It allows to run VS Code in the same |PhaserEditor|_ server and edit the game code in your local browser.