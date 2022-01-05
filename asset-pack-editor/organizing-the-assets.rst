.. include:: ../_header.rst

Organizing the Asset Pack files
-------------------------------

You can place an |AssetPackFile| in any folder, however, we recommend placing these files in the folders dedicated to the game assets, for example: ``assets/pack.json``.

You usually need more than one |AssetPackFile|_: at least, one for the Preloader scene and another for the rest of the game scenes.

Sometimes, you need to use "helper" assets in the |SceneEditor|_, assets that you use in the |SceneEditor|_ as a reference but are not included in the game. You can group all these assets with their own |AssetPackFile| in a separate folder, and exclude the folder from the game build.

This could be the structure of your project:

.. highlight:: bash

.. code::

    assets/
       preload/
         preload-pack.json
         ... # preloader assets
       levels/
         levels-pack.json
         ... # level assets
       helpers/
         helper-pack.json
         ... # helper assets

The |AssetPackEditor|_ searches for files inside the folder containing the |AssetPackFile|_, and you can make it more effective if the structure of the project is well organized.

`Learn how to add entries to an Asset Pack file <importing-files.html>`_