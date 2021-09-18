.. include:: ../_header.rst
   
.. highlight:: javascript


Distributions
-------------

.. toctree::
   
   core
   all-in-one

|PhaserEditor|_ is distributed as two different products:

* Phaser Editor 2D Core
* Phaser Editor 2D All-in-One

Both products are available for Linux, Windows, and macOS.

Why two different products?

When you develop an HTML5 game with Phaser_, there are two tech stacks you need to get familiar with: game development tooling and web development tooling.

The game development tooling is the most important one (it includes map editors, texture packers, animation tools), however, when you are making professional games, it is recommended to add a modern web development tech stack to your workflow. For example a static-typed coding language like TypeScript. A package management tool like |npm|_. A web bundler like |webpack|_.

Probably, developers coming from the mainstream game development world, are not familiar with the web development stack, and look to |PhaserEditor|_ as an alternative to mainstream editors like Unity Editor, Godot, Construct, etc...

For those users, there is the |allInOne|_ product. It wraps |core|_ (the editor's server and client) in an ElectronJS_ app and provides an experience similar to traditional IDEs: project templates, and a deeper integration with the local Operating System.

On the other side, there is |core|_. It contains the server and client of the editor. Its architecture allows better integration with the web development toolings.

Modern web development is moving to the cloud, using platforms like Gitpod_ and |GithubCodespaces|_. |core|_ allows using the editor in these cloud-based development environments.
