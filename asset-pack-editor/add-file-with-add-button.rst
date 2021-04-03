.. include:: ../_header.rst


Add files with the Add File command
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These are the steps:

1. Press the **Add File** button in the |MainToolbar|_ (or the **Add File** option in the context menu or the ``A`` key). 
2. It opens a dialog with all the file types, select the type of file you want to add.

 .. image:: ../images/asset-pack-editor-add-file-1-04072020.webp
   :alt: Select the file type.

3. When you select a file type, it opens a dialog with a list of candidate files to be added. The candidate files are selected following these rules:

 * The files belong to the folder, or sub-folder, of the editor input file. It is not a restriction of the |AssetPackFile|_, but we use it to simplify the process of importing the files.

 * The content type or extension of the file names are compatible with the type selected. For example, if you select to add an Image, then only image files are shown.

 * The files are not included in any other |AssetPackFile|_ in the project.

 However, you always have the option of select any file by pressing the **Show All Files** button of the dialog.


 .. image:: ../images/asset-pack-editor-add-file-2-04072020.webp
   :alt: Select the files to be added.

4. Change the properties of the file configurations in the |InspectorView|_. Many of the values of the fields are set automatically. It is the case of the URL of the file, that is computed using the project's relative path of the file. Read the `Setting the root folder for the asset files <./public-root.html>`_ section to learn more about the URL of the asset files.


 .. image:: ../images/asset-pack-editor-edit-file-inspector-view-2-04072020.webp
   :alt: Edit properties of a file configuration.
