.. include:: ../_header.rst
   
.. highlight:: javascript

Command palette
---------------

The `Command palette`_ is a dialog that shows the commands available in the **current context**. You can open it by pressing ``Ctrl+K`` or clicking on the **Command Palette** option of the |MainMenu|_.

Not all commands are shown, those that do not apply to the **current context** (active view, active editor or active dialog) are omitted.

In the dialog, you can select a command and execute it by pressing the **Execute** button.

.. image:: ../images/workbench-command-palette-04072020.webp
 :alt: Command palette dialog.

Commands are contributed to the workbench, by plugins.

Here a list of all the available commands, grouped by category:

.. csv-table::
 :header: "Category", "Command", "Keys", "Description"
 :widths: 1, 4, 1, 4
 
    "General","Decrement Tab Size","``Ctrl+Digit3``","Make bigger the editor tabs."
    "General","Increment Tab Size","``Ctrl+Digit4``","Make smaller the editor tabs."
    "General","Close Editor","``Ctrl+Q``","Close active editor."
    "General","Close All Editors","``Ctrl+Shift+Q``","Close all editors."
    "General","Undo","``Ctrl+Z``","Undo operation"
    "General","Redo","``Ctrl+Shift+Z``","Redo operation"
    "General","Collapse All","``C``","Collapse all elements"
    "General","Select All","``Ctrl+A``","Select all elements"
    "General","Expand/Collapse the tree branch","``Space``","Expand or collapse a branch of the select element"
    "General","Escape","``Escape``","Escape"
    "General","Command Palette","``Ctrl+K``","Show a dialog with the list of commands active in that context."
    "General","Open Comment Dialog","``Ctrl+Alt+Space``","Open a comment dialog to write texts in presentations or screen-recording videos."
    "General","Select Color Theme","``Ctrl+Digit2``","Select the color theme of the IDE."
    "Edit","Save","``Ctrl+S``","Save"
    "Edit","Delete","``Delete``","Delete"
    "Edit","Rename","``F2``","Rename"
    "Edit","Copy","``Ctrl+C``","Copy selected objects."
    "Edit","Cut","``Ctrl+X``","Cut selected objects."
    "Edit","Paste","``Ctrl+V``","Paste clipboard content."
    "Edit","Update Current Editor","``Ctrl+Alt+U``","Refresh the current editor's content."
    "Files","New File","``Ctrl+Alt+N``","Create new content."
    "Files","Go To File","``Ctrl+P``","Search for a file and open it in the default editor"
    "Project","Open Project","``Ctrl+Alt+P``","Open other project or create a new one."
    "Project","Play Project","``F12``","Run this project in other tab"
    "Project","Quick Play Project","``F10``","Run this project in a dialog."
    "Project","Reload Project","``Ctrl+Alt+R``","Reload the project files."
    "Project","Compile Project","``Ctrl+Alt+B``","Compile all files."
    "Project","Locate File","``Ctrl+Alt+L``","Open the selected file (or project root) in the OS file manager."
    "Project","Open Visual Studio Code","``Ctrl+Alt+U``","Open the project in the configured external editor (Visual Studio Code)."
    "Asset Pack","Add File","``A``","Add new file configuration"
    "Scene Editor","Fix Duplicated Scenes ID","````","Fix the duplicated ID of the scene files."
    "Scene Editor","Clear Scene Thumbnail Cache","````","Clear the thumbnail images cache."
    "Scene Editor","Add Object","``A``","Add a built-in object to the scene."
    "Scene Editor","Duplicate Scene File","````","Duplicate the scene file, with a new ID."
    "Scene Editor","Toggle Visibility","``V``","Toggle the visible property of the object"
    "Scene Editor","Create Layer With Selection","````","Create a layer with the selected objects"
    "Scene Editor","Create Container With Selection","``J``","Create a container with the selected objects"
    "Scene Editor","Trim Container","``Shift+T``","Remove left/top margin of children."
    "Scene Editor","Break Parent","``Shift+B``","Destroy container and re-parent children."
    "Scene Editor","Select Parent","``P``","Select the parent container"
    "Scene Editor","Move To Parent","``Shift+P``","Re-parent the selected objects."
    "Scene Editor","Open Output File","````","Open the output source file of the scene."
    "Scene Editor","Compile Scene","````","Compile the editor's Scene."
    "Scene Editor","Translate Tool","``T``","Translate the selected scene objects"
    "Scene Editor","Rotate Tool","``R``","Rotate the selected scene objects"
    "Scene Editor","Scale Tool","``S``","Scale the selected scene objects"
    "Scene Editor","Origin Tool","``O``","Change the origin of the selected scene object"
    "Scene Editor","Select Region Tool","``Shift+S``","Select all objects inside a region"
    "Scene Editor","Pan Tool","``Space``","Pan the scene viewport"
    "Scene Editor","Resize Tool","``Z``","Resize selected objects."
    "Scene Editor","Set Origin To Top/Left","``Ctrl+Numpad7``","Set the origin of the object to (0,0)"
    "Scene Editor","Set Origin To Top/Center","``Ctrl+Numpad8``","Set the origin of the object to (0.5,0)"
    "Scene Editor","Set Origin To Top/Right","``Ctrl+Numpad9``","Set the origin of the object to (1,0)"
    "Scene Editor","Set Origin To Middle/Left","``Ctrl+Numpad4``","Set the origin of the object to (0,0.5)"
    "Scene Editor","Set Origin To Middle/Center","``Ctrl+Numpad5``","Set the origin of the object to (0.5,0.5)"
    "Scene Editor","Set Origin To Middle/Right","``Ctrl+Numpad6``","Set the origin of the object to (1,0.5)"
    "Scene Editor","Set Origin To Bottom/Left","``Ctrl+Numpad1``","Set the origin of the object to (0,1)"
    "Scene Editor","Set Origin To Bottom/Center","``Ctrl+Numpad2``","Set the origin of the object to (0.5,1)"
    "Scene Editor","Set Origin To Bottom/Right","``Ctrl+Numpad3``","Set the origin of the object to (1,1)"
    "Scene Editor","Move Object Depth Up","``PageUp``","Move the object in its container to Up."
    "Scene Editor","Move Object Depth Down","``PageDown``","Move the object in its container to Down."
    "Scene Editor","Move Object Depth Top","``Home``","Move the object in its container to Top."
    "Scene Editor","Move Object Depth Bottom","``End``","Move the object in its container to Bottom."
    "Scene Editor","Replace Type","````","Replace the type of the selected objects."
    "Scene Editor","Convert To TileSprite","``L``","Convert the selected objects into TileSprite instances. Or resize it if it is a TileSprite."
    "Scene Editor","Open Prefab","``F``","Open the Prefab file of the selected prefab instance."
    "Scene Editor","Create Prefab With Object","````","Create a new prefab file with the selected object."
    "Scene Editor","Quick Edit Output File","``Q``","Shortcut to edit the compiled code in a popup editor."
    "Scene Editor","Open Output File in Visual Studio Code","``Ctrl+Alt+E``","Open the compiler output file in the configured external editor (Visual Studio Code)"
    "Scene Editor","Move Object Position 10x Left","``Shift+ArrowLeft``","10x Move selected objects position in the 'Left' direction"
    "Scene Editor","Move Object Position Left","``ArrowLeft``","Move selected objects position in the 'Left' direction"
    "Scene Editor","Move Object Position 10x Right","``Shift+ArrowRight``","10x Move selected objects position in the 'Right' direction"
    "Scene Editor","Move Object Position Right","``ArrowRight``","Move selected objects position in the 'Right' direction"
    "Scene Editor","Move Object Position 10x Up","``Shift+ArrowUp``","10x Move selected objects position in the 'Up' direction"
    "Scene Editor","Move Object Position Up","``ArrowUp``","Move selected objects position in the 'Up' direction"
    "Scene Editor","Move Object Position 10x Down","``Shift+ArrowDown``","10x Move selected objects position in the 'Down' direction"
    "Scene Editor","Move Object Position Down","``ArrowDown``","Move selected objects position in the 'Down' direction"
    "Scene Editor","Select All With Same Texture","````","Select all the objects with the same texture."
    "Scene Editor","Replace Texture","``X``","Change the texture of the selected objects."
    "Scene Editor","Replace Texture Frame","``M``","Change the texture's frame of the selected objects."
    "Scene Editor","Toggle Snapping","``E``","Enable/disable the snapping."
    "Scene Editor","Snap To Object Size","``W``","Enable snapping and set size to the selected object."
    "User Components Editor","Add User Component","``A``","Add a new User Component."
    "User Components Editor","Compile","````","Compile User Components file."
    "User Components Editor","Open Component Output File","````","Open the output source file of the selected component."
    "User Components Editor","Quick Edit Component Source File","``Q``","Open output component file in a popup editor."
    "User Components Editor","Open Component Output File in Visual Studio Code","``Ctrl+Alt+E``","Open the compiler output file in the configured external editor (Visual Studio Code)"
    "Sprite Animation","Add Animation","``A``","Add a new animation"
    "Sprite Animation","Prepend Frames","````","Prepend frames to the selected animation."
    "Sprite Animation","Append Frames","````","Append frames to the selected animation."
