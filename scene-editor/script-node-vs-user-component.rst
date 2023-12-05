
.. include:: ../_header.rst

Script Nodes vs User Components
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Now you have two mechanisms for assigning behaviors to an object: the |ScriptNode|_ and the |UserComponents|_. Now you have to decide when to use one or another. In this chapter, we try to provide you with a small guide.

**When to use a User Component?**

Many users find a user component very handy because you can edit its properties right away, in the same place as the object's properties. You don't need to browse an object's tree of nodes. Also, components are familiar philosophy in the Phaser API. However, user components have a main restriction: it has a one-to-one relationship with the object. It means, you can assign only a single type of component to the object, so it should implement the whole behavior as a unit.

These are some examples of modeling behaviors with user components:

* An **AutoplayAnimation** user component that you can add to sprites. It has an **animationKey** property that is played automatically. Because you can play only one animation at a time in a sprite, it fits well in the one-to-one relationship constraint of user components.
* A **BorderAnchor** component, with an **anchorTo** property with values like ``left``, ``top``, ``right``, ``bottom``. This component will auto-re-position the object in a responsive scene. Because an object has only one position, it fits in the one-to-one restriction of user components.
* A **DurationConfig** component, with info about the duration of an animation. You can add it to a script node or a prefab, that performs an animation. It means you can use a user component for adding extra configuration to a certain action or object.

**When to use a Script Node?**

The script nodes are logical game objects and you can make prefabs of them. The prefabs system in the editor is powerful and you can express complex behaviors in a hierarchical relationship. Also, you can add script nodes not only to objects else to scenes too. However, it is very easy you start abusing the use of script nodes and making large hierarchies of logical nodes. We think for now it isn't a good idea, but in the end, it is up to you.

Some examples of modeling behaviors with script nodes:

* When you can make logical units that you can combine and make different behaviors. For example, you can make a **StartSceneAction** script node with a **sceneKey** property. This node will start the **sceneKey** scene when it is executed. You can use this script in different contexts:
  * In a hierarchy of nodes for starting the Game scene after pressing a **Play** button. 
  * You can use the same **StartSceneAction** in a hierarchy of nodes that listens to the SPACE key, so it starts the Game scene.
  * A **LevelGameplay** script node with the gameplay of a level. You can add this node to a different scene and change the parameters of the gameplay, to make it harder.
* A **PlayerCollider**, **DestroyObjectAction**, and a **ChangeHealthAction** scripts. You can combine them to express when a player hits an object in the level if it will destroy the object and how much it affects the player's health. You can create different combinations for the different kinds of objects in the level.

As we said previously, it is up to you when to use the script nodes and how much you split the behaviors in a tree of small logical units. Our advice is to keep it simple and learn first from your game before making a complex framework of script nodes.