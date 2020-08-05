.. include:: ../_header.rst

Resources filtering
-------------------

|PhaserEditor|_ is the typical web application with a server layer and a client (browser) layer. Because the browser has no direct access to the file of the projects, the editor loads `many resources in memory <resources-caching.html>`_. For this reason, it is important that you keep a low number of files in the project. Usually, HTML5 games need a few number of files, but it is possible that you include the files of third-party tools or the files of the server side of the game.

The ``node_modules`` folder is an example of resources that are not relevant to a |PhaserEditor|_ project, so it is automatically filtered off by the editor server.

However, if you have files that you cannot move out the project, you can say to the server to ignore them, by creating a ``.skip`` file in the folder you want to ignore.

The editor has a limit of 1000 files per project, so file filtering is required to run the editor in case the project has more than 1000 files.