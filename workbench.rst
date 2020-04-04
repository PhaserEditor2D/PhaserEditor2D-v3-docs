.. include:: _header.rst
   
.. sectnum::
   :depth: 3
   :start: 3

.. highlight:: javascript

Workbench
=========

The workbench is the sum of all the parts of the IDE: the editors, views, wizards, dialogs, menus, commands, themes, extensions, storage. Is the basement for the tools included in the IDE.

If you are a |PhaserEditor|_ v2 user, this new version IDE should result very familiar to you.


Overview of the workbench elements
----------------------------------

The IDE is very straight forward, it has views, editors, a toolbar, a main menu, dialogs, just like a regular desktop IDE:


.. image:: images/workbench-overview-04032020.jpg
 :alt: Workbench overview.


Views
~~~~~

A view is a panel that can be used with any purpose. In the IDE they are used mostly to display structured data or the properties of an object.

There are a couple of views in the IDE: some of them show content related to the active editor, content related to the selected element in the workbench, or content of the project.

At this moment, the views can be resized but not dragged, docked or stacked in other places in the workbench, or closed and opened (as you can do in other IDEs). We should add those features in a future version of IDE.

Editors
~~~~~~~

An editor is a panel that is dedicated to edit an object, or input. It has a title and a content area. The title shows the name or identifier of the input object and the content area provides the UI elements to edit the input. In the majority of the cases, the input of an editor is a file.

An important characteristic of the editors is the "dirty" state. When the user changes something in the editor, the editor is labeled as "dirty", and indicates that it should be saved to persist the changes.



Editor title menu.





Main toolbar
~~~~~~~~~~~~

Main menu
~~~~~~~~~


Project templates
-----------------

Color themes
------------

Commands palette
----------------