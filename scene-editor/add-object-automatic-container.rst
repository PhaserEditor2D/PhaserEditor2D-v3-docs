.. include:: ../_header.rst

Automatic parenting of new objects
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When a new object is created (by `dropping a block <blocks-view-integration.html>`_, or by pasting the object) a set of rules are evaluated to determine the parent of the new object:

* If there is an object selected in the scene:
    
    * If it is a container, then the new object will be added to it.
    
    * Else, if it has a parent container, then the new object will be added to the parent.

* If the scene is a prefab scene:

    * If the scene is empty, the new object is added to the scene.

    * If the `root object <prefab-object.html>`_ is a container, then the new object will be added to it. 
    
    * Else, a new container is created and the old `root object`_ and the newly added object will be added to the new container. So the scene will have a new `root object`_: the automatically created container.