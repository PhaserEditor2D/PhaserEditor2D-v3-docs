.. include:: ../_header.rst

Advanced JavaScript editing features
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

By default, the |MonacoEditor|_ only analyzes a single file, the one is open. In |PhaserEditor|_ we did an extra work to allow the |MonacoEditor|_ to analyzes the whole project. This means, the JavaScript editor will show the auto-completion of elements defined in any file of the project, including the Phaser_ types.

This feature is enabled by default. However, it is resource consuming (network, CPU, memory) and you would like to disable it if you are using a third-party tool to edit the code (like |VSCode|_).

.. highlight:: bash

.. code::
    
    $ PhaserEditor2D -disable-advanced-js-editor -ws /path/to/workspace

`Learn more about the Phaser Editor 2D server options <../misc/server-options.html>`_