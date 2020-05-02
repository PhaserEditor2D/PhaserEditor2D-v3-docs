
.. include:: ../_header.rst

Troubleshooting
---------------

The |SceneEditor|_ is a complex tool. It depends on the state of the whole project. A change in an asset file, a |AssetPackFile|_ or a prefab_ file, can affect to the |SceneEditor|_ content. For that reason, it is possible that you find a glitch or something weird in the editor, like an object without image of an object it an out-dated image. In this case, you can do any other following steps:

* Execute the **Refresh Scene** command: press ``Ctrl+Alt+U`` or find it in the context menu.

* Reload the project assets: press ``Ctrl+Alt+R`` or click on the **Reload Project** option in the |MainMenu|_.

Other common problem is that when you execute the game, the scene is different. A possible cause could be that the scene was not re-compiled after a prefab_ file change.

If you change a prefab_ file, for example, you change the type of the `prefab object <../scene-editor/prefab-object.html>`_, then you should re-compile all the scenes referencing that prefab_ file. The quick solution is to re-compile the whole project: press ``Ctrl+Alt+B`` or select the **Compile Scenes** option in the |MainMenu|_.
