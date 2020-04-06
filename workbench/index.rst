.. include:: ../_header.rst
   
.. highlight:: javascript


Workbench
=========

.. toctree::
   :maxdepth: 1

   views
   editors
   files-view
   inspector-view
   outline-view   
   blocks-view
   main-toolbar
   main-menu
   playing-project
   new-file-dialog
   project-templates
   upload-dialog
   color-themes
   commands-palette


The workbench is the sum of all the parts of the IDE: the editors, views, dialogs, menus, commands, themes, extensions, storage. Is the basement for the tools included in the IDE.

If you are a |PhaserEditor|_ v2 user, this new version of the IDE should result very familiar to you. It has a similar layout but removes all the complexity of a general purpose IDE, and shows to you only the tools you need.

.. image:: ../images/workbench-overview-04032020.jpg
 :alt: Workbench overview.

The IDE includes elements present in other game development tools:

* The |OutlineView|_ shows the content of the active editor but with an hierarchical structure.

* The |InspectorView|_ shows the properties of the objects selected in the active editor or active view. We can say all objects you can edit in the IDE are modified in the |InspectorView|_.

* The |BlocksView|_ shows the elements you can use to build the objects of the active editor. If the active editor is the |SceneEditor|_, the |BlocksView|_ shows the assets you can drop into the scene. If the active editor is the |AssetPackEditor|_, then it shows the files you can import into the |AssetPackFile|_. Maybe this view is not so common in the market, but the concept is simple. 

* The |FilesView|_ displays the files of the project. It is just like any other files explorer. It allows to delete, rename, move, upload the files. Open the files in an editor and other file related actions. Like the other views, when you select a file, the |InspectorView|_ shows the properties and other actions related to the file.

* The |MainToolbar|_ and |MainMenu|_ provides commands (or actions) that affect the current editor or the whole IDE.


