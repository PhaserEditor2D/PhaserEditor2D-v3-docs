.. include:: ../_header.rst

Aseprite support
~~~~~~~~~~~~~~~~

Aseprite (`www.aseprite.org <https://www.aseprite.org>`_) is a popular software for making pixel art and animations. Phaser_ provides an Aseprite files loader and a method for making animations with the files.

This is the workflow for working with Aseprite animations in |PhaserEditor|_:

* Export the Aseprite_ files to the Phaser Editor 2D project. You should follow `these instructions <#aseprite-exporting-instructions>`_ for exporting the files. The following image shows the atlas and PNG files of the "paladin" and "tank" animations:
   
   .. image:: ../images/scene-editor-aseprite-export-1-20231102.webp
     :alt: Aseprite exported files.

* Import the Aseprite_ files in an |AssetPackFile|_. You can select the atlas files (``.json``) and import them with the `import buttons of the Inspector view <../asset-pack-editor/import-from-files-view.html>`_:
    
    .. image:: ../images/scene-editor-import-aseprite-files-files-view-20231102.webp
        :alt: Select the Aseprite files
    
    .. image:: ../images/scene-editor-import-aseprite-files-inspector-view-20231102.webp
       :alt: Import the files

    You can check the files are correctly defined in the |AssetPackFile|_:

    .. image:: ../images/scene-editor-aseprite-pack-file-1-20231102.webp
      :alt: Aseprite files in the pack file

    .. image:: ../images/scene-editor-aseprite-pack-file-2-20231102.webp
      :alt: Aseprite files in the pack file

* Now the Aseprite_ files are in the |AssetPackFile|_ you can access the animations in the different tools of the editor:
  
   .. image:: ../images/scene-editor-aseprite-animation-block-20231102.webp
      :alt: Aseprite animation in the scene editor blocks view.

Aseprite exporting instructions
"""""""""""""""""""""""""""""""

Taken from the `Phaser documentation <https://photonstorm.github.io/phaser3-docs/Phaser.Loader.LoaderPlugin.html#aseprite_anchor>`_:


.. pull-quote:: 

    To export a compatible JSON file in Aseprite, please do the following:

    Go to "File - Export Sprite Sheet"

    On the Layout tab: 2a. Set the "Sheet type" to "Packed" 2b. Set the "Constraints" to "None" 2c. Check the "Merge Duplicates" checkbox

    On the Sprite tab: 3a. Set "Layers" to "Visible layers" 3b. Set "Frames" to "All frames", unless you only wish to export a sub-set of tags

    On the Borders tab: 4a. Check the "Trim Sprite" and "Trim Cells" options 4b. Ensure "Border Padding", "Spacing" and "Inner Padding" are all > 0 (1 is usually enough)

    On the Output tab: 5a. Check "Output File", give your image a name and make sure you choose "png files" as the file type 5b. Check "JSON Data" and give your json file a name 5c. The JSON Data type can be either a Hash or Array, Phaser doesn't mind. 5d. Make sure "Tags" is checked in the Meta options 5e. In the "Item Filename" input box, make sure it says just "{frame}" and nothing more.

    Click export.

    This was tested with Aseprite 1.2.25.

    This will export a png and json file which you can load using the Aseprite Loader