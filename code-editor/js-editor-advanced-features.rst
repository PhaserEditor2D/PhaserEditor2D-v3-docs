.. include:: ../_header.rst

Advanced JavaScript editing features
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

By default, the |MonacoEditor|_ only analyzes a single file, the one is open. In |PhaserEditor|_ we did an extra work to allow the |MonacoEditor|_ to analyzes the whole project. This means, the JavaScript editor will show the auto-completion of elements defined in any file of the project, including the Phaser_ types.

To enable this advanced feature, you should run the |PhaserEditor|_ server with the ``--enable-advanced-js-editor`` option:

.. highlight:: bash

.. code::
    
    $ PhaserEditor2D --enable-advanced-js-editor -ws /path/to/workspace

`Learn more about the Phaser Editor 2D server options <../misc/server-options.html>`_

This advanced editing is disabled by default because it consumes more resources, in terms of memory and network.