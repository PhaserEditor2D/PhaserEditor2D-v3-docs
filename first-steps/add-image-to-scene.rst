.. include:: ../_header.rst

Add an image to the scene
-------------------------

Let's add an image to the ``Level.scene`` file created by the **Basic JavaScript** project template.

1. To upload an image to the project. Rich-click on the ``assets`` folder and press the **Upload Files** option of the context menu.

  .. image:: ../images/first-steps-upload-file-1-04042020.jpg
   :alt: Upload image.

2. It opens the **Upload Files** dialog. Click on the **Browse** button and select the image file in your computer.

  .. image:: ../images/first-steps-upload-file-2-04042020.jpg
   :alt: Upload image.

3. Press the **Upload** button. The image is uploaded to the ``assets`` folder and shown in the |FilesView|_.

  .. image:: ../images/first-steps-upload-file-3-04042020.jpg
   :alt: Upload image.

4. Check the new image is selected in the |FilesView|_. Look in the |InspectorView|_, there are the properties of the image file. In the section **Asset Pack File**, there two buttons to import the image into an |AssetPackFile|_. Click on the **Import image** button and select **Add To /assets/asset-pack.json**.

  .. image:: ../images/first-steps-add-image-1-04042020.jpg
   :alt: Add image.

   

 The ``assets/asset-pack.json`` is a Phaser_ file with the configuration of all the files you can load in a game. The |SceneEditor|_ uses it to get the images or any other file information.

 You can add the image files to the |AssetPackFile|_ using the previous method or opening the ``assets-pack.json``  file in the |AssetPackEditor|_.

5. Click on the |SceneEditor|_ that is open, it will refresh the |BlocksView|_ and the new image will be shown in the view.

  .. image:: ../images/first-steps-add-image-2-04042020.jpg
    :alt: Add image.

6. Drag the image from the |BlocksView|_ and drop it in the middle of the scene. Press the ``End`` key to move the image to the bottom of the scene. Or right click in the image and select the **Depth** |-| **Move Objects To Bottom** option.

  Save the editor and play the project (``F12``).

  .. image:: ../images/first-steps-add-image-3-04042020.jpg
    :alt: Add image.

.. note::

  There are a couple of initial steps you have to follow to add an image to the scene. 1) Upload. 2) Add the image to the |AssetPackFile|. 3) Drag the image from the |BlocksView|_ and drop it into the scene.
  
  This workflow may be simplified in the future, but for us it is important to make that process transparent, with no custom API or file formats, and make it full compatible with any other third-party tool you can use.