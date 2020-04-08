
.. include:: ../_header.rst

Import files from the Blocks view
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The `Blocks view <../workbench/blocks-view.html>`_ is a general-purpose view that connects with the active editor and provides the "blocks" needed to build the objects of the editor.

When the |AssetPackEditor|_ is active, the `Blocks view`_ shows the files that are candidates to be imported. A file is a candidate to be imported if:

* The file belongs to the folder, or sub-folder, of the |AssetPackFile|_ that is the input of the editor.

* The file is not present in any other pack file of the project.

* If the file has a content type or file name extension that we know is never loaded in games: 

 * TypeScript files (``.ts``).

 * |SceneEditor|_ files (``.scene``).

 * Another |AssetPackFile|_.

The workflow is the following:

#. Select the files to be imported in the |BlocksView|_.

#. Select one of the importing options listed in the **Import File** section of the  |InspectorView|_.

 .. image:: ../images/asset-pack-add-file-from-blocks-view-04082020.png
   :alt: Import files from Blocks view.

#. When the files are imported, edit the new configurations in the |InspectorView|_.

This is a shorter workflow, you select the files you want to import and the editor automatically provides to you the options to import the files, based on the content type and name of the files.
