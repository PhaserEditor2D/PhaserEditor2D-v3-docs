.. include:: ../_header.rst

Organizing the Asset Pack files
-------------------------------

You can place an |AssetPackFile| in any folder, however, we recommend placing these files in the folders dedicated to the game assets, for example: ``assets/pack.json``.

The common is that you need more than one |AssetPackFile|_, at least, one for the Preloader screen and other for the rest of the game screens.

Sometimes, you need to use "helper" assets in the |SceneEditor|_, assets that you use in the |SceneEditor|_ as reference, but are not included in the game. You can group all these assets with its own |AssetPackFile| in a separated folder, and exclude it from the game build.

This could be a structure of your project:

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

The |AssetPackEditor|_ searches for files inside the folder or sub-folder of the |AssetPackFile|_, and you can make it more effective if the structure of the project is well organized.

`Learn how to add files to the Asset Pack file <add-file.html>`_