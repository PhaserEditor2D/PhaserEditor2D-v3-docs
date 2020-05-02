.. include:: ../_header.rst

Asset Pack File
---------------

The |AssetPackFile| is a manifest (in JSON format) of the files you can load in a game. It is built-in in Phaser_ and you can use it without |PhaserEditor|_.

`Learn more about the Asset Pack loading in Phaser <https://photonstorm.github.io/phaser3-docs/Phaser.Loader.LoaderPlugin.html#pack__anchor>`_

This file is intensively used in the IDE. Tools like the |SceneEditor|_ depends on the information provided in the asset pack files.

You can have multiple `asset pack files <asset-pack-file.html>`_ in the project. Actually, it is a good practice in large games, to split the assets in different groups (asset pack files) and load them only when it is required.