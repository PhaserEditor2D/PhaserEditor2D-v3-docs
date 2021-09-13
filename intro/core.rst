.. include:: ../_header.rst
   
.. highlight:: javascript

Phaser Editor 2D Core
~~~~~~~~~~~~~~~~~~~~~

The |Core|_ distribution is a tiny, focused distribution of Phaser Editor 2D.

It is tiny because it includes only the editor's server and client, and provides only the Phaser game development tools (especially, the Scene Editor plugin), delegating to third-party tools questions like code editing.

Being tiny doesn't mean it is missing something, it means it is focused on the hard problem: design Phaser_ scenes. It allows integrating the editor in different scenarios, like developing in a local desktop or in a remote cloud-based environment (let's say Gitpod_ or |GithubCodespaces|_).

You can add |Core|_ to a Docker file, or add it as a dependency to a Node package, or just download it and execute it in your OS.

Actually, if you are going to make professional games, we recommend using |Core|_:

* You can add it as development dependency to your NPM project:

  * Teammates will use the same version of the editor, which is automatically installed with the ``npm install`` command.

  * You can update the editor with the ``npm update`` command.

  * You can run the editor with the ``npm run editor`` command.

* It integrates well with |VSCode|_, so no extra plugins for coding are not included.

* You can use it in a cloud-based development environment.

* You can run the client (IDE workbench) in the browser of your preference.

If you want to start making Phaser_ games and you are not familiar with the web tooling, we recommend using the |allInOne|_ distribution.