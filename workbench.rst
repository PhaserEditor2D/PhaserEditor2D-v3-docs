.. include:: _header.rst
   
.. sectnum::
   :depth: 3
   :start: 2

.. highlight:: javascript

Workbench
=========

The workbench is the sum of all the parts of the IDE: the editors, views, wizards, dialogs, menus, commands, themes, extensions, storage. Is the basement to support the tools provided by the IDE.

If you are a |PhaserEditor|_ v2 user, you will feel familiar with the workbench.

About the internals: for |PhaserEditor|_, we developed `Colibri`_, a small framework to build the workbench. Inspired by the Eclipse Rich Client Platform, it can be customized and extended using its extensions and modules mechanism. We can say |PhaserEditor|_ is a set of modules and extensions on top of `Colibri`_.

The goal is to provide an extensible IDE, a platform for our own tools and the community tools.





Remote resources and caching
----------------------------

Project templates
-----------------

Color themes
------------