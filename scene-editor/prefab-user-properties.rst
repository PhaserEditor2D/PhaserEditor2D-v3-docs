.. include:: ../_header.rst

Prefab user properties
~~~~~~~~~~~~~~~~~~~~~~

.. toctree::
    :maxdepth: 1

    prefab-user-properties-create
    prefab-user-properties-simple-type
    prefab-user-properties-options-type
    prefab-user-properties-color-type
    prefab-user-properties-expression-type
    prefab-user-properties-object-variable-type
    prefab-user-properties-object-constructor-type
    prefab-user-properties-event-type
    prefab-user-properties-keycode-type
    prefab-user-properties-texture-type
    prefab-user-properties-asset-key-type
    prefab-user-properties-animation-key-type
    prefab-user-properties-audio-key-type
    prefab-user-properties-scene-key-type
    prefab-user-properties-spine-skin-name
    prefab-user-properties-spine-animation-name
    prefab-user-properties-initializing
    prefab-user-properties-prefab-instance


As we mentioned in previous sections, a prefab_ extends a Phaser_ built-in type or another prefab_. This means a prefab_ inherits the properties defined in the Phaser_ built-in types. However, you have the option to define new properties.

With prefab_ user properties, you can create more reusable prefabs_. You can express gameplay concepts: the "health" of a player, the "value" of a coin, the "speed" of an enemy, etc.