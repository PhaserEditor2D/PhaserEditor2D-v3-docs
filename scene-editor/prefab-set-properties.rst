
.. include:: ../_header.rst


Changing a property of a prefab instance 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

As we explained in the previous sections, a prefab_ is just a class that extends other prefab_ class or a Phaser_ built-in type.

When you create a prefab_ instance, the new object gets the properties set in the prefab_. For example, the texture of the new instance is the same texture set in the prefab_ (in the constructor of the prefab_ class).

If you change the texture in the prefab_, all the prefab instances will use the new texture. However, you can unlock the `texture property <texture-property.html>`_ of certain instances and set a different texture.

Note that when you select a prefab_ instance, the |InspectorView|_ shows a "lock" icon next to the object properties. That icon is saying that the property is locked. If you click the icon, it is changed to an "unlocked" icon, and means that the property is unlocked.

When you unlock a property, you can change its value, and it is not going to be updated if the property is changed in the prefab_. An unlocked property is not linked to the prefab_ anymore.

It is easy to understand if you see it in terms of a class and a class instance. By default, the instance get the properties set in the class constructor. But you can change that value when you create the instance, and it will remains the same no matter if you change the class constructor.

Now, if you lock the property again, the property will get the value set in the prefab_. Unlocking a property is like reset it to the prefab_ value.

Let's see an example step by step:

#. Create two instances of the **Dragon** prefab_. Both instances use the same texture of the prefab_: a green dragon:

    .. image:: ../images/prefab-set-property-example-1-04212020.webp
        :alt: Two prefab instances.

#. You want to change the texture of the first instance, so you unlock the `texture property`_ and select a new image:

    .. image:: ../images/prefab-set-property-example-2-04212020.webp
        :alt: Unlock texture property.

#. You want to see how it looks with a purple texture, but you change it in the **Dragon** prefab_ file, so, the second prefab_ instance will be updated automatically to show the new purple dragon texture:

    .. image:: ../images/prefab-set-property-example-3-04212020.webp
        :alt: You changed the texture in the prefab.

#. Ok, you love the purple color of the dragon, so you want all the **Dragon** prefab_ instances to have the same color. To do this, you lock again the `texture property`_ of the first (yet brown) dragon and it gets the prefab_ texture: the purple one:

    .. image:: ../images/prefab-set-property-example-4-04212020.webp
        :alt: Both instances with same prefab texture.