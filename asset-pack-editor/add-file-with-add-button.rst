.. include:: ../_header.rst


Importing using the Main toolbar
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These are the steps:

1. With the |AssetPackEditor|_ active, press the **Import File** button in the |MainToolbar|_ (also available in the context menu or by pressing the ``A`` key.)
2. It opens a dialog with all the file types.  Select the type of file you want to add.

 .. image:: ../images/asset-pack-editor-add-file-1-01012022.webp
   :alt: Select the file type.

3. When you select a file type, it opens a dialog with a list of candidate files to be added. The candidate files are selected following these rules:

 * The files belong to the folder, or sub-folder, of the editor input file. It is not a restriction of the |AssetPackFile|_, but we use it to simplify the process of importing the files.

 * The content type or extension of the file names are compatible with the type selected. For example, if you select to add an Image, then only image files are shown.

 * The files are not included in any other |AssetPackFile|_ in the project.

 However, you always have the option of select any file by pressing the **Show All Files** button of the dialog.


 .. image:: ../images/asset-pack-editor-add-file-2-01012022.webp
   :alt: Select the files to be added.

4. Change the properties of the file configuration in the |InspectorView|_. Many of the values of the fields are set automatically. The file URL is computed using its relative path in the project. Read `Setting the root folder for the asset files <./public-root.html>`_ to learn more about the asset file URLs.


 .. image:: ../images/asset-pack-editor-edit-file-inspector-view-2-01012022.webp
   :alt: Edit properties of a file configuration.
