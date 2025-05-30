# dev-3444-g930223aca (Jun 06 2024)

#### Features
* Command line arguments can now be passed to the application via the URL of the WebAssembly version
* Warnings are now shown regarding duplicate values when importing attributes or column annotations

#### Bug Fixes
* Fix potential crash in correlation annotation rendering
* Fix editing of attributes not undoing correctly
* Fix custom visualisation mapping controls being available when attribute has no range

#### Other
* Reduce probability of subwindows getting hidden in the background on open
* Adjust source code to use modern Qt QML build system
* Improve performance of Find By Attribute Value
* Disable code signing on Windows build

# dev-3388-g6c7bf9c0b (May 07 2024)

#### Bug Fixes
* Fix crashing enrichment analysis

# dev-3381-gec04ee00f (Apr 22 2024)

#### Features
* Add *[Softmax](https://en.wikipedia.org/wiki/Softmax_function)* data normalisation method to correlation loader

#### Bug Fixes
* Tutorial now works on WebAssembly
* Fix locked transforms displaying 'nan' for drop down list parameters

#### Other
* Workaround for crash on NVidia based Windows systems
* Update to Qt 6.7.0

# dev-3331-g53e7eef9d (Mar 28 2024)

#### Features
* Adjacency matrix loaders can now be cancelled
* General improvement to operation on high DPI displays, particularly with fractional scaling factors

#### Bug Fixes
* Fix last row of attribute table being obscured by horizontal scroll bar
* Workaround QTBUG-120352; invisible scroll bars
* Fix crash in *Type Cast* transform
* Fix *Show Edge Direction* option not being immediately applied
* Fix crash when trying to load single column correlation data tables
* Fix row height of some list displays
* Fix re-enabling a visualisation with a lost attribute causing errors
* Fix operation of context sensitive menu items on *macOS*

#### Other
* Experimental WebAssembly support
* Update to Qt 6.6.3

# dev-3148-gd201c1cfb (Nov 15 2023)

#### Features
* Improve file content identity algorithm
* Add functionality to import column annotations onto an existing correlation plot
* Improve UI feedback for selecting data rectangle, in correlation loader
* Better handling of operating system UI theming, including *Dark Mode* on platforms that support it
* High resolution rendering of the correlation plot on high DPI displays
* Add antilog functionality to correlation plot
* Enable log and antilog correlation scaling methods in situations where they were previously unavailable
* Add *Shared Text* visualisation channel, enabling the textual annotation of groups of nodes

#### Bug Fixes
* Fix crash involving attribute selection UI component
* Fix rendering of fonts with overlapping strokes (most obvious on *MacOS*)
* Fix font selection not operating correctly in some circumstances

#### Other
* Update some library based dependencies
* Update to Qt 6.6

# dev-2936-g186e50f60 (Aug 07 2023)

#### Features
* Add *Attribute Value Heatmap* option, which displays a correlation heatmap based on some attribute's values

 ![heatmap.png](file:heatmap.png)

* Double clicking the background in overview mode now resets the view
* Ease restrictions on zooming in overview mode
* Auto zoom now operates in overview mode
* Add *Focus Selection* option to *Table* menu, which will focus the nodes corresponding to the current table row selection
* Add *Auto Focus* option, which does the same as the above, except automatically whenever the row selection is changed

#### Bug Fixes
* Fix crash on exit with particular versions of *MacOS*
* Fix various subtle renderer transition bugs, particularly when several transitions are started/interrupted in rapid succession
* Fix handling of some load failure modes

# dev-2883-g437dbfa31 (Jun 09 2023)

#### Features
* Add ability to fix correlation plot sort order when *Data Value* sort is in force
* Add *Save As Images By… → Row* option to output an image for each selected table row
* Add facility to forcibly change the type and description of user defined attributes
* Text size can now be altered on-the-fly in the *Layout Settings* panel
* Text size and colour can now be used as a visualisation output in the normal way

#### Bug Fixes
* Fix keyboard interaction with attribute list UI
* Fix correlation plot context menu state inconsistencies
* Fix display not immediately updating following some preference changes
* Fix *Save As Images By…* misbehaving with respect to file names with multiple dots in them

# dev-2819-ga840ce03d (May 16 2023)

#### Features
* Add *Find Rows of Interest* functionality
* Add *Type Cast* transform, to convert attribute types

#### Bug Fixes
* Fix crash when removing an attribute

# dev-2801-g7e7190f5a (May 12 2023)

#### Features
* Allow for loading adjacency matrices from *.txt* files
* Improve error message when loading inconsistent tabular data files
* Improve mouse wheel behaviour in correlation plot

#### Bug Fixes
* Fix crash involving favourite transforms
* Fix crash when a load is cancelled in a particular phase
* Reset UI state when switching from *Find By Attribute Value* to normal *Find*
* Fix *Copy Column To Clipboard* copying the wrong data after a sequence of selection changes
* Hide *Save As Images By* when there are no attributes with shared values

#### Other
* Improve node attribute table performance when node selection changes
* Selection outlines of transparent graph elements are now rendered transparent too

# dev-2781-g6de5393a0 (May 02 2023)

#### Bug Fixes
* Fix various funky UI bugs that resulted from a (now reverted) change intended to work better (in future) with Qt 6.5

# dev-2779-g560b4fd3d (Apr 25 2023)

#### Bug Fixes
* Fix clustering algorithms sorting clusters of the same size in an arbitrary order

# dev-2777-g9bf98540a (Apr 24 2023)

#### Features
* Add option to load an external node layout using the same file format as produced by the export option
* A command line headless mode is now available that enables the creation of *.graphia* files without manually needing to select parameters in the UI; potentially useful for batch processing on servers
* Add *Crop To Selection* option to the attribute data table, which synchronises the node selection with the current table row selection
* Add *View → Show Edges* option, which allows for disabling the rendering of edges entirely

#### Bug Fixes
* Fix crash when deleting nodes
* When exporting node positions, export the non-scaled values
* Fix various table row selection issues
* Fix URL handler registration on Windows user installations

#### Other
* Improve Windows installer behaviour when dealing with user accounts with admin privileges
* Windows installer now employs existing install's uninstaller when updating
* Capture updater debug output in order to aid future debugging
* Default sort order for *Find By Attribute Value* is now lexographical

# dev-2655-g9ed9bacd1 (Jan 23 2023)

#### Features
* Add ability to save correlation plot images on a per attribute value basis, e.g. saving one image per cluster

#### Other
* Improve video driver crash detection
* Improve installer error message on macOS when target directory is not writeable
* Update to Qt 6.4.2
* Improve scrolling behaviour in various places to be more desktop idiomatic

# dev-2604-ge4882047d (Dec 07 2022)

#### Features
* Replace the *Initial Transforms* section of the correlation loader with *Template*, allowing for a more flexible and customisable means of appending additional transforms and visualisations

![correlation-parameters-template.png](file:correlation-parameters-template.png)

* In the k-NN filtering case, add a field that allows selection of a minimum correlation value, so that weak relationships between rows can be discarded

#### Bug Fixes
* Fix crash that occurs when attempting to creat a k-NN graph with zero edges
* Fix crash when reloading certain save files where nodes have been manually deleted
* Improve macOS update script to deal with the case where the target .app has been renamed

#### Other
* Generate debug information for arm64 platform (Apple M1), making crash diagnosis easier
* Make various load failure modes report more specific reasons to the user

# dev-2548-gde7e14812 (Nov 23 2022)

#### Features
* Add a *Filtering* option to correlation parameters, more specifically enabling the ability to filter edges using the *k-Nearest Neighbours* strategy; this is particularly useful with datasets that are extremely correlated, where traditional thresholding cannot adequately differentiate between rows

![knn-correlation.png](file:knn-correlation.png)

# dev-2485-ga43f5a4df (Oct 28 2022)

#### Bug Fixes
* Fix *Copy Column To Clipboard* not respecting the current node selection

# dev-2478-g5cce5609e (Oct 17 2022)

#### Bug Fixes
* Fix mouse clicks being out of sync with display when a large quantity of column annotations are visible
* Fix \"ghost\" node selection box appearing after an unusual combination of mouse drags and key presses
* Fix temporary lock-up at the end of a transform application
* Fix macOS menu hiding
* Fix visually overlapping components when nodes move from one component to another
* Fix *Copy Column To Clipboard* copying the wrong column when the columns have been reordered

#### Other
* Capture more debug output on Windows

# dev-2435-gaa85b8180 (Sep 30 2022)

#### Changes
* Clicking on the correlation plot's Y axis no longer sorts by data value
* Clicking on a column annotation body no longer sorts by that column annotation

#### Bug Fixes
* Fix *Add Template* menu option being disabled when no visualisations are employed
* Fix plugin window being created as MDI on Windows
* Fix *Select Source/Targets/Neighbours* being generally broken
* Fix initial clipping constant having excessive figures after the decimal point
* Fix *WebSearch* plugin operation on Windows
* Fix display acuity on Windows when a non-integral scaling factor is being used (e.g. when a using a high DPI monitor)

# dev-2414-g93c0bffbe (Sep 21 2022)

#### Features
* Make Winsorization operate on a per-row basis

# dev-2409-g6a16356b8 (Sep 20 2022)

#### Bug Fixes
* Fix various instances of the busy indicator being invisible
* Fix crash involving the selection of attributes
* Fix the appearance of the background of help tool tips on macOS
* Improve layout of correlation parameters dialog on macOS
* Improve appearance of column annotation sort indicators on Windows
* Relax criteria for acceptable input data on correlation files

# dev-2395-gad4677c5b (Sep 14 2022)

#### Features
* Source, target and neighbour rows can now be selected in the data table via the context menu
* In the correlation loader, input data can now be clipped against a constant, or by *Winsorization*
* Correlation plot columns can now be sorted by hierarachical clustering, using the SLINK method with a Euclidean distance measure

#### Bug Fixes
* Fix directional edges being visible
* Fix plugin/extension preferences getting forgotten
* Fix graph size estimate plot inappropriately showing \"Empty Graph\" in some circumstances
* Fix poor behaviour when loading correlation data with anonymous columns
* Fix various assorted problems with menu state, many of which manifested most obviously on macOS

#### Other
* macOS builds now take advantage of *Apple M1* hardware

# dev-2326-g4979e37f (Aug 11 2022)

#### Features
* Add mechanism to save sets of transforms and visualisations for later recall

 ![templates.png](file:templates.png)

* Add option to interpret trackpad pan gestures as zooming; this is primarily useful for users of the Apple *Magic Mouse*, where it's more intuitive for scrolling vertically to map to zooming

#### Bug Fixes
* Fix bookmark hotkeys being inoperative

# dev-2301-ga763230a (Jul 11 2022)

#### Features
* Move code base to Qt 6.3 🥳 (Please [report](https://github.com/graphia-app/graphia/issues) bugs/regressions)

# dev-2002-g5cf925ef (Jun 23 2022)

#### Bug Fixes
* Fix *Remember This Choice* not working when the file being opened contained more than one period
* Fix potential crash that might occur when changing the find attribute multiple times
* Fix crash when plotting an IQR with zero outliers

# dev-1997-g830e75cd (Jun 10 2022)

#### Bug Fixes
* Fix keyboard selection in the main data table

# dev-1990-g471a74cc (May 25 2022)

#### Bug Fixes
* Fix key detection during attribute import where keys are large integers

# dev-1986-ge5cd4532 (May 12 2022)

#### Bug Fixes
* Fix crash that occurred if the application was closed during a particular phase of a load
* Fix blank graph rendering in some rare circumstances

# dev-1984-gd69a9124 (Apr 29 2022)

#### Features
* Graph metrics display now reflects the visible component, when in component mode

#### Bug Fixes
* Fix GML saver creating key names that start with a digit
* Fix various problems with the GraphML saver

# dev-1971-g9360a966 (Apr 07 2022)

#### Features
* Make the correlation plot vertically scrollable when it's too large for its container - i.e. when there are many column annotations

#### Bug Fixes
* Fix correlation plot data value sorting occasionally behaving oddly when node selection changes
* Fix group by annotation button being inappropriately enabled
* Fix changes to transform flags (locked, pinned) not being properly undoable

# dev-1957-g6707ab8c (Apr 04 2022)

#### Features
* Add facility to select favourite transforms, which are displayed at the top of the transform list
* Improved detection of video driver crashes

#### Bug Fixes
* Bring MCL inline with the reference implementation by not skipping single node clusters
* Fix pairwise exporter introducing extra quotes into its output

# dev-1923-g31015c13 (Mar 22 2022)

#### Bug Fixes
* Fix crash that occurred when changing the graph with the *Find* interface active
* Prevent showing the main context menu over the *Find* interface
* Fix delay in showing *Find By Attribute* interface when an attribute has a large quantity of values
* Collect more information when a *std::exception* based crash occurs
* Fix force directed layout getting stuck on some contracted graphs
* Fix deadlock/crash when cancelling a command

# dev-1912-g9be583af (Mar 09 2022)

#### Features
* When there is a choice of file type or plugin to use, said choice can be set as a default, avoiding future prompts
* The file type selector of the file open dialog is now used to guide file type and plugin selection
* There is now an option (on the *Misc* tab of the *Options* dialog) to change the way *Find By Attribute Value* sorts the list of possible attribute values; it can now be done alphanumerically, in addition to the normal behaviour of sorting from the large to small set size
* The correlation plot columns can now be sorted by data value
* The pairwise file loader now has a front end that allows for the configuration of columns within the source data table, so it's no longer necessary for pairwise files to be strictly 2 or 3 columns

#### Bug Fixes
* Fix text style options not taking effect immediately
* Fix enrichment results export being initially disabled
* Fix initial dimensions on screenshot capture preset often being wrong
* Fix renderer not updating when focused labelling enabled
* Fix adjacency matrix parser not setting the node names
* Use the correct file extension when saving a non-native format

# dev-1811-g0ab9cf22 (Jan 12 2022)

#### Features

* Add option to clone any attribute into a new user defined attribute
* Add option to edit user defined attributes
* Add various options to node attribute table context menu
* Add a few toolbar buttons for controlling the correlation plot

#### Bug Fixes

* Fix visualisation attribute list not updating following attribute changes
* Fix crash on correlation plot when moving the mouse along a particular path
* Fix empty graph warning being displayed before estimate completes
* Fix crash on loading certain adjacency matrix files


# dev-1760-gf6d1d5d3-debug (Sep 30 2021)

#### Features

* In the correlation plot, when *Group By Annotation* is enabled there is now another option to colour the IQR boxes with a user selected annotation
* The correlation plot can now be panned and zoomed using the mouse wheel
* When displaying IQR plots, outliers can now be disabled by toggling the *Show Outliers* menu option
* Add facility to configure network proxy

#### Bug Fixes

* Fix a crash that occurred when removing attributes
* Fix graphia:// style links not working reliably where there is a chain of web server redirects
* The epsilon used when log scaling data is now computed to use an appropriately sized value rather than a fixed constant
* Fix numeric column annotations with empty values being treated as categorical ones
* Hopefully at least reduce the occurence of the macOS pthreads crash
* Fix inoperative slider when a transform parameter has a large range
* Fix potential crash when importing attributes when there is no key match
* (Hopefully) workaround a crash in Qt that occurs when interacting with the graph size estimate plot on macOS


# dev-1653-g942d9d6a (Aug 13 2021)

#### Features

* In the correlation plot, data can now be combined into IQR boxplots based on one or more annotations, enabled by selecting *Group By Annotation* in the *Plot* menu
* In the correlation plot, data can now be log scaled when rendering IQR boxplots
* Improved IQR rendering performance
* Added Biweight Midcorrelation (Bicor) correlation algorithm

#### Bug Fixes

* Fix plot grid lines getting incorrectly enabled in some circumstances
* Fix redundant plot redraws

# dev-1547-g3beebadd (Jul 21 2021)

#### Features

* Downloadable files can now be opened directly, either by using the *Open Url* option in the *File* menu, or by dragging and dropping hyperlinks onto the main window
* A Graphia specific URL scheme is now registered so that the application may now be opened by clicking special hyperlinks; these can be created using the [Link Generator](https://graphia.app/link-generator.html)
* Loading pairwise CSV, TSV, SSV and XLSX tables is now possible
* Loading Cytoscape eXchange files is now possible, as used on [NDex](https://www.ndexbio.org/)
* Added *Forward Attribute* transform; for contracted edges, this will forward a selected attribute's values to all 'child' multi-elements
* Added *Average Attribute* transform; create a new attribute whose values are determined by averaging the values of a numerical attribute, using a categorical attribute
* Layout settings are now accesible via a toolbar button
* Node and edge sizes are now saved in the *.graphia* file and are adjustable via *Layout Settings*
* Layout settings can now be saved as named presets, for quick access to frequently used settings
* Erroring visualisations can now have their source attribute changed, i.e. so they can be 'repaired'
* Attributes can now be imported using integral keys

#### Bug Fixes

* Fix loading GML files where the edges precede the nodes
* Fix missing column annotations where there were a large number of unique values
* Fix various issues involving attributes that change values and/or type during transforms
* Fix loading of some older *.graphia* file versions
* Fix malformed tab titles when the source file name contains periods
* Fix wrong initial save file name
* Fix possibility of dismissing the correlation parameters dialog before the data rect had been found
* When loading correlation data with duplicate attribute column names, these are now considered separately rather than overwriting each other

#### Linux

* An XDG desktop item is now automatically created, so Graphia will appear in system menus

# dev-1350-g04d8368a (May 03 2021)

#### Features

* Correlating tables of discrete values is now possible, using the Jaccard Index or Simple Matching Coefficient algorithms
* For continuous correlation, the Euclidean Distance and Cosine Similarity algorithms are now available
* When loading from an adjacency matrix, it is now possible to choose to discard edges based on edge weight, and to skip double edges where the matrix is symmetric
* When importing attributes, there is now an option to replace existing attributes (if they share the same name)
* User attributes can now be removed if desired, accessible via *Tools → Remove Attributes…*
* Column annotation colours are now assigned by palette rather than by hashing the string value
* Numerical column annotations are now displayed using a gradient
* Hyperlinks in table cells are now clickable and some [basic HTML 3.2](https://doc.qt.io/qt-5/qml-qtquick-text.html#textFormat-prop) can be displayed
* Generally improved performance when there are a large number of components
* Clustering algorithms now create node attributes reflecting the size of the clusters in which the respective nodes belong, effectively allowing filtering operations on the size of clusters
* Graphviz _dot_ files may now be loaded
* A log is now made of the steps taken in the graph's creation, accessible via *Tools → Show Provenance Log…*
* In the correlation plot, values can now be scaled by an attribute value
* When viewing enrichment results, the chosen attribute names are now used for the column headers

#### Bug Fixes

* Fix crash involving search and selection
* Fix crash when sorting column annotations
* Fix crash caused by graph visuals being altered during a graph change
* Fix crash when loading from empty files
* Fix palette editor behaviour when there are few assignable values
* Fix Matlab loader not handling some forms of adjacency matrix
* Fix attribute ranges and shared values not getting updated under some circumstances
* Fix transforms and visualisations not being refreshed when referenced attribute values change
* Improve installer/uninstaller behaviour when the user chooses to install to a pre-existing and non-empty directory (on Windows)

# dev-955-g9c051144 (Jan 04 2021)

#### Features

* Add attribute import functionality, accessible via *Tools → Import Attributes From Table…*
* Add option to disable multisampling, for a performance improvment, particularly on old hardware
* Add text to the Options dialog on macOS, suggesting opening the application in *Low Resolution Mode* for a further performance improvement
* Add option to stay in component mode when finding, by default off
* Format the enrichment results table in such a way improves Microsoft Excel's interpretation of it, when exported

#### Bug Fixes

* Fix empty values being included in enrichment results

# dev-838-g41f75ac1 (Nov 11 2020)

#### Features

* Add search functionality in all the places where attributes are chosen; this is most useful when selecting a *Data Value* attribute in the case where there are many

 ![attribute-search.jpg](file:attribute-search.jpg)

* Add ability copy the contents of a column from the node attribute table to the clipboard, accessible by right clicking the column header
* Add options to the node attribute table header context menu to explicitly sort ascending or descending
* Add *Apply* buttons to the gradient, palette and numeric mapping visualisation dialogs, for immediate preview of settings
* Add *Latest Changes* option to *Help* menu, which shows any new changes present in the running version

#### Bug Fixes

* Fix broken correlation plot interaction
* Fix double clicking a transform name in the transform creation dialog disabling subsequent initial mouse click
* Fix occasionally ambiguous Esc key shortcut
* Fix help tool tips being badly sized on macOS
* Fix flickering of windows when adjusting the correlation plot on macOS
* Fix node selection not working after a specific sequence of transforms
* Fix crash that occurred when an attribute was destroyed and recreated with the same name, but a different element type
* Fix crash that occurred after selecting some nodes, then cycling a transform a number of times
* Fix 'Remove Leaves' transform behaving inconsistently with respect to singletons

#### Other

* Improve robustness of transform creation
* Minor performance improvements to *AvailableAttributesModel*

# dev-745-gafb88628 (Oct 09 2020)

#### Bug Fixes

* Fix crash when clicking off axis on correlation plot
* Fix crash when sorting column annotations during a tooltip update
* Prevent the possibility of creating invalid transforms, in some circumstances

#### Other

* Improve column annotation rendering performance
* Improve column annotation sort performance
* Improve performance of *AvailableAttributesModel*

# dev-730-gbf240c7a (Oct 01 2020)

#### Bug Fixes

* Fix dead lock that could occur when a command completes very quickly

# dev-628-g95ac4d0e-open-source (Apr 20 2020)

#### Bug Fixes
* Fix crash on Windows




# 5.2 (Jan 14 2025)

# 5.2
---

#### Bug Fixes
* Fix crash when editing an attribute via the data table context menu

# 5.1
---

#### Bug Fixes
* Fix operation of *WebSearch* plugin under Windows

# 5.0
---

#### Loading
* Allow for loading adjacency matrices from *.txt* files
* Improve error message when loading inconsistent tabular data files
* Improve file content identity algorithm
* Adjacency matrix loaders can now be cancelled

#### Transforms and Visualisations
* Add *Type Cast* transform, to convert attribute types
* *Text Size* can now be used as a visualisation channel

 ![text-size.png](file:text-size.png)

* *Text Colour* can now be used as a visualisation channel

 ![text-colour.png](file:text-colour.png)

* Add *Shared Text* visualisation channel, enabling the textual annotation of groups of nodes

 ![shared-text.png](file:shared-text.png)

#### Attributes
* Add facility to edit the type and description of user defined attributes

 ![edit-attribute-type.png](file:edit-attribute-type.png)

* Warnings are now shown regarding duplicate values when importing attributes

#### Correlation
* Add *Find Rows of Interest* functionality, identifying rows that correlate with selected columns

 ![find-rows-of-interest.png](file:find-rows-of-interest.png)

* Add ability to fix correlation plot sort order when *Data Value* sort is in force
* Add *Save As Images By… → Row* option to output an image for each selected table row
* Add functionality to import column annotations onto an existing correlation plot
* High resolution rendering of the correlation plot on high DPI displays
* Add antilog functionality to correlation plot
* Enable log and antilog correlation scaling methods in situations where they were previously unavailable
* Add [Softmax](https://en.wikipedia.org/wiki/Softmax_function) data normalisation method to correlation loader
* Warnings are now shown regarding duplicate values when importing column annotations

#### Miscellaneous
* [WebAssembly](https://web.graphia.app/) support

 ![webassembly.png](file:webassembly.png)

* Add option to load an external node layout using the same file format as produced by the export option
* A command line headless mode is now available that enables the creation of *.graphia* files without manually needing to select parameters in the UI; useful for batch processing on servers
* Add *Crop To Selection* option to the attribute data table, which synchronises the node selection with the current table row selection
* Add *View → Show Edges* option, which allows for disabling the rendering of edges entirely
* Text size can now be altered on-the-fly in the *Layout Settings* panel
* Double clicking the background in overview mode now resets the view
* Ease restrictions on zooming in overview mode
* Add *Focus Selection* option to Table menu, which will focus the nodes corresponding to the current table row selection
* Add *Auto Focus* option, which does the same as the above, except automatically whenever the row selection is changed
* Better handling of operating system UI theming, including *Dark Mode* on platforms that support it
* Default sort order for *Find By Attribute Value* is now lexographical

#### Bug Fixes
* When exporting node positions, export the non-scaled values
* Fix various table row selection issues
* Reset UI state when switching from *Find By Attribute Value* to normal *Find*
* Fix *Copy Column To Clipboard* copying the wrong data after a sequence of selection changes
* Fix crash when removing an attribute
* Fix keyboard interaction with attribute list UI
* Fix correlation plot context menu state inconsistencies
* Fix *Save As Images By…* misbehaving with respect to file names with multiple dots in them
* Fix various subtle renderer transition bugs, particularly when several transitions are started/interrupted in rapid succession
* Fix handling of some load failure modes
* Fix crash involving attribute selection UI component
* Fix rendering of fonts with overlapping strokes (most obvious on *MacOS*)
* Fix font selection not operating correctly in some circumstances
* Fix last row of attribute table being obscured by horizontal scroll bar
* Fix some visual options not being immediately applied
* Fix crash when trying to load single column correlation data tables
* Fix re-enabling a visualisation with a lost attribute causing errors
* Fix operation of context sensitive menu items on *MacOS*
* Fix locked transforms displaying 'nan' for drop down list parameters
* Fix potential crash in correlation annotation rendering
* Fix editing of attributes not undoing correctly
* Fix custom visualisation mapping controls being available when attribute has no range

#### Other
* General improvement to operation on high DPI displays, particularly with fractional scaling factors as seen on *Windows*
* Improve node attribute table performance when node selection changes
* Selection outlines of transparent graph elements are now rendered transparent too
* Update to Qt 6.7.0

# 5.1 (Aug 08 2024)

# 5.1
---

#### Bug Fixes
* Fix operation of *WebSearch* plugin under Windows

# 5.0
---

#### Loading
* Allow for loading adjacency matrices from *.txt* files
* Improve error message when loading inconsistent tabular data files
* Improve file content identity algorithm
* Adjacency matrix loaders can now be cancelled

#### Transforms and Visualisations
* Add *Type Cast* transform, to convert attribute types
* *Text Size* can now be used as a visualisation channel

 ![text-size.png](file:text-size.png)

* *Text Colour* can now be used as a visualisation channel

 ![text-colour.png](file:text-colour.png)

* Add *Shared Text* visualisation channel, enabling the textual annotation of groups of nodes

 ![shared-text.png](file:shared-text.png)

#### Attributes
* Add facility to edit the type and description of user defined attributes

 ![edit-attribute-type.png](file:edit-attribute-type.png)

* Warnings are now shown regarding duplicate values when importing attributes

#### Correlation
* Add *Find Rows of Interest* functionality, identifying rows that correlate with selected columns

 ![find-rows-of-interest.png](file:find-rows-of-interest.png)

* Add ability to fix correlation plot sort order when *Data Value* sort is in force
* Add *Save As Images By… → Row* option to output an image for each selected table row
* Add functionality to import column annotations onto an existing correlation plot
* High resolution rendering of the correlation plot on high DPI displays
* Add antilog functionality to correlation plot
* Enable log and antilog correlation scaling methods in situations where they were previously unavailable
* Add [Softmax](https://en.wikipedia.org/wiki/Softmax_function) data normalisation method to correlation loader
* Warnings are now shown regarding duplicate values when importing column annotations

#### Miscellaneous
* [WebAssembly](https://web.graphia.app/) support

 ![webassembly.png](file:webassembly.png)

* Add option to load an external node layout using the same file format as produced by the export option
* A command line headless mode is now available that enables the creation of *.graphia* files without manually needing to select parameters in the UI; useful for batch processing on servers
* Add *Crop To Selection* option to the attribute data table, which synchronises the node selection with the current table row selection
* Add *View → Show Edges* option, which allows for disabling the rendering of edges entirely
* Text size can now be altered on-the-fly in the *Layout Settings* panel
* Double clicking the background in overview mode now resets the view
* Ease restrictions on zooming in overview mode
* Add *Focus Selection* option to Table menu, which will focus the nodes corresponding to the current table row selection
* Add *Auto Focus* option, which does the same as the above, except automatically whenever the row selection is changed
* Better handling of operating system UI theming, including *Dark Mode* on platforms that support it
* Default sort order for *Find By Attribute Value* is now lexographical

#### Bug Fixes
* When exporting node positions, export the non-scaled values
* Fix various table row selection issues
* Reset UI state when switching from *Find By Attribute Value* to normal *Find*
* Fix *Copy Column To Clipboard* copying the wrong data after a sequence of selection changes
* Fix crash when removing an attribute
* Fix keyboard interaction with attribute list UI
* Fix correlation plot context menu state inconsistencies
* Fix *Save As Images By…* misbehaving with respect to file names with multiple dots in them
* Fix various subtle renderer transition bugs, particularly when several transitions are started/interrupted in rapid succession
* Fix handling of some load failure modes
* Fix crash involving attribute selection UI component
* Fix rendering of fonts with overlapping strokes (most obvious on *MacOS*)
* Fix font selection not operating correctly in some circumstances
* Fix last row of attribute table being obscured by horizontal scroll bar
* Fix some visual options not being immediately applied
* Fix crash when trying to load single column correlation data tables
* Fix re-enabling a visualisation with a lost attribute causing errors
* Fix operation of context sensitive menu items on *MacOS*
* Fix locked transforms displaying 'nan' for drop down list parameters
* Fix potential crash in correlation annotation rendering
* Fix editing of attributes not undoing correctly
* Fix custom visualisation mapping controls being available when attribute has no range

#### Other
* General improvement to operation on high DPI displays, particularly with fractional scaling factors as seen on *Windows*
* Improve node attribute table performance when node selection changes
* Selection outlines of transparent graph elements are now rendered transparent too
* Update to Qt 6.7.0

# 5.0 (Jul 30 2024)

# 5.0
---

#### Loading
* Allow for loading adjacency matrices from *.txt* files
* Improve error message when loading inconsistent tabular data files
* Improve file content identity algorithm
* Adjacency matrix loaders can now be cancelled

#### Transforms and Visualisations
* Add *Type Cast* transform, to convert attribute types
* *Text Size* can now be used as a visualisation channel

 ![text-size.png](file:text-size.png)

* *Text Colour* can now be used as a visualisation channel

 ![text-colour.png](file:text-colour.png)

* Add *Shared Text* visualisation channel, enabling the textual annotation of groups of nodes

 ![shared-text.png](file:shared-text.png)

#### Attributes
* Add facility to edit the type and description of user defined attributes

 ![edit-attribute-type.png](file:edit-attribute-type.png)

* Warnings are now shown regarding duplicate values when importing attributes

#### Correlation
* Add *Find Rows of Interest* functionality, identifying rows that correlate with selected columns

 ![find-rows-of-interest.png](file:find-rows-of-interest.png)

* Add ability to fix correlation plot sort order when *Data Value* sort is in force
* Add *Save As Images By… → Row* option to output an image for each selected table row
* Add functionality to import column annotations onto an existing correlation plot
* High resolution rendering of the correlation plot on high DPI displays
* Add antilog functionality to correlation plot
* Enable log and antilog correlation scaling methods in situations where they were previously unavailable
* Add [Softmax](https://en.wikipedia.org/wiki/Softmax_function) data normalisation method to correlation loader
* Warnings are now shown regarding duplicate values when importing column annotations

#### Miscellaneous
* [WebAssembly](https://web.graphia.app/) support

 ![webassembly.png](file:webassembly.png)

* Add option to load an external node layout using the same file format as produced by the export option
* A command line headless mode is now available that enables the creation of *.graphia* files without manually needing to select parameters in the UI; useful for batch processing on servers
* Add *Crop To Selection* option to the attribute data table, which synchronises the node selection with the current table row selection
* Add *View → Show Edges* option, which allows for disabling the rendering of edges entirely
* Text size can now be altered on-the-fly in the *Layout Settings* panel
* Double clicking the background in overview mode now resets the view
* Ease restrictions on zooming in overview mode
* Add *Focus Selection* option to Table menu, which will focus the nodes corresponding to the current table row selection
* Add *Auto Focus* option, which does the same as the above, except automatically whenever the row selection is changed
* Better handling of operating system UI theming, including *Dark Mode* on platforms that support it
* Default sort order for *Find By Attribute Value* is now lexographical

#### Bug Fixes
* When exporting node positions, export the non-scaled values
* Fix various table row selection issues
* Reset UI state when switching from *Find By Attribute Value* to normal *Find*
* Fix *Copy Column To Clipboard* copying the wrong data after a sequence of selection changes
* Fix crash when removing an attribute
* Fix keyboard interaction with attribute list UI
* Fix correlation plot context menu state inconsistencies
* Fix *Save As Images By…* misbehaving with respect to file names with multiple dots in them
* Fix various subtle renderer transition bugs, particularly when several transitions are started/interrupted in rapid succession
* Fix handling of some load failure modes
* Fix crash involving attribute selection UI component
* Fix rendering of fonts with overlapping strokes (most obvious on *MacOS*)
* Fix font selection not operating correctly in some circumstances
* Fix last row of attribute table being obscured by horizontal scroll bar
* Fix some visual options not being immediately applied
* Fix crash when trying to load single column correlation data tables
* Fix re-enabling a visualisation with a lost attribute causing errors
* Fix operation of context sensitive menu items on *MacOS*
* Fix locked transforms displaying 'nan' for drop down list parameters
* Fix potential crash in correlation annotation rendering
* Fix editing of attributes not undoing correctly
* Fix custom visualisation mapping controls being available when attribute has no range

#### Other
* General improvement to operation on high DPI displays, particularly with fractional scaling factors as seen on *Windows*
* Improve node attribute table performance when node selection changes
* Selection outlines of transparent graph elements are now rendered transparent too
* Update to Qt 6.7.0

# 4.2 (Sep 12 2023)

# 4.2
---
#### Bug Fixes
* Fix node selection not being reflected in correlation plot

# 4.1
---
#### Bug Fixes
* Fix clustering algorithms labelling clusters in an arbitrary order when they happened to be the same size
* Fix crashes and data corruption related to favourite transforms
* Fix crash that occurred when cancelling a load at a particular point
* Fix crash that occurred when removing a table column
* Restore attribute selection keyboard based interface from 3.x
* Fix instances where the context menus on some UI elements would get out of sync with respect to their main menu equivalents
* Fix visualisation descriptions not appearing in the visualisation creation dialog
* Fix various issues with filenames when saving plot images
* Fix crash that occurred on *MacOS* when exiting
* Fix various assorted issues with the data table

# 4.0
---
#### Loading
* When there is a choice of file type or plugin to use, said choice can be set as a default, avoiding future prompts
* The file type selector of the file open dialog is now used to guide file type and plugin selection
* The pairwise file loader now has a front end that allows for the configuration of columns within the source data table, so it's no longer necessary for pairwise files to be strictly 2 or 3 columns

#### Transforms and Visualisations
* Add facility to select favourite transforms, which are displayed at the top of the transform list
* Add mechanism to save sets of transforms and visualisations for later recall

 ![templates.png](file:templates.png)

#### Attributes
* There is now an option (on the *Misc* tab of the *Options* dialog) to change the way *Find By Attribute Value* sorts the list of possible attribute values; it can now be done alphanumerically, in addition to the normal behaviour of sorting from the large to small set size

#### Correlation
* The correlation plot columns can now be sorted by data value
* The correlation plot is now vertically scrollable when it's too large for its container - i.e. when there are many column annotations
* In the correlation loader, input data can now be clipped against a constant, or by *[Winsorization](https://en.wikipedia.org/wiki/Winsorizing)*
* Correlation plot columns can now be sorted by hierarchical clustering, using the SLINK method with a Euclidean distance measure
* Add a *Filtering* option to correlation parameters, more specifically enabling the ability to filter edges using the *k-Nearest Neighbours* strategy; this is particularly useful with datasets that are extremely correlated, where traditional thresholding cannot adequately differentiate between rows

 ![knn-correlation.png](file:knn-correlation.png)

* Replace the *Initial Transforms* section of the correlation loader with *Template*, allowing for a more flexible and customisable means of appending additional transforms and visualisations

 ![correlation-template-parameters.png](file:correlation-template-parameters.png)

* Add ability to save correlation plot images on a per attribute value basis, e.g. saving one image per cluster

#### Miscellaneous
* In plugins that have a data table, the source, target and neighbour rows can now be selected
* Graph metrics display now reflects the visible component, when in component mode
* Add option to interpret trackpad pan gestures as zooming; this is primarily useful for users of the Apple *Magic Mouse*, where it's more intuitive for scrolling vertically to map to zooming

#### Bug Fixes
* Bring MCL inline with the reference implementation by not skipping single node clusters
* Fix pairwise exporter introducing extra quotes into its output
* Fix crash that occurred when changing the graph with the *Find* interface active
* Prevent showing the main context menu over the *Find* interface
* Fix delay in showing *Find By Attribute* interface when an attribute has a large quantity of values
* Fix deadlock/crash when cancelling a command
* Fix initial dimensions on screenshot capture preset often being wrong
* Fix renderer not updating when focused labelling enabled
* Use the correct file extension when saving a non-native format
* Fix correlation plot data value sorting occasionally behaving oddly when node selection changes
* Fix changes to transform flags (locked, pinned) not being properly undoable
* Fix blank graph rendering in some rare circumstances
* Fix potential crash that might occur when changing the find attribute multiple times
* Fix graph size estimate plot inappropriately showing \\"Empty Graph\\" in some circumstances
* Fix poor behaviour when loading correlation data with anonymous columns
* Fix \\"ghost\\" node selection box appearing after an unusual combination of mouse drags and key presses
* Fix temporary lock-up at the end of a transform application
* Fix visually overlapping components when nodes move from one component to another
* Fix crash when reloading certain save files where nodes have been manually deleted

#### Other
* Move code base to Qt 6/Qt Quick 2 (Please [report](https://github.com/graphia-app/graphia/issues) bugs/regressions)
* macOS builds now take advantage of *Apple M1* hardware
* Capture more debug output on Windows
* Improve video driver crash detection
* Collect more information when a *std::exception* based crash occurs
* Improve macOS update script to deal with the case where the target .app has been renamed
* Improve installer error message on macOS when target directory is not writeable
* Allow selection of alternative UI themes where available

# 4.1 (Aug 28 2023)

# 4.1
---
#### Bug Fixes
* Fix clustering algorithms labelling clusters in an arbitrary order when they happened to be the same size
* Fix crashes and data corruption related to favourite transforms
* Fix crash that occurred when cancelling a load at a particular point
* Fix crash that occurred when removing a table column
* Restore attribute selection keyboard based interface from 3.x
* Fix instances where the context menus on some UI elements would get out of sync with respect to their main menu equivalents
* Fix visualisation descriptions not appearing in the visualisation creation dialog
* Fix various issues with filenames when saving plot images
* Fix crash that occurred on *MacOS* when exiting
* Fix various assorted issues with the data table

# 4.0
---
#### Loading
* When there is a choice of file type or plugin to use, said choice can be set as a default, avoiding future prompts
* The file type selector of the file open dialog is now used to guide file type and plugin selection
* The pairwise file loader now has a front end that allows for the configuration of columns within the source data table, so it's no longer necessary for pairwise files to be strictly 2 or 3 columns

#### Transforms and Visualisations
* Add facility to select favourite transforms, which are displayed at the top of the transform list
* Add mechanism to save sets of transforms and visualisations for later recall

 ![templates.png](file:templates.png)

#### Attributes
* There is now an option (on the *Misc* tab of the *Options* dialog) to change the way *Find By Attribute Value* sorts the list of possible attribute values; it can now be done alphanumerically, in addition to the normal behaviour of sorting from the large to small set size

#### Correlation
* The correlation plot columns can now be sorted by data value
* The correlation plot is now vertically scrollable when it's too large for its container - i.e. when there are many column annotations
* In the correlation loader, input data can now be clipped against a constant, or by *[Winsorization](https://en.wikipedia.org/wiki/Winsorizing)*
* Correlation plot columns can now be sorted by hierarchical clustering, using the SLINK method with a Euclidean distance measure
* Add a *Filtering* option to correlation parameters, more specifically enabling the ability to filter edges using the *k-Nearest Neighbours* strategy; this is particularly useful with datasets that are extremely correlated, where traditional thresholding cannot adequately differentiate between rows

 ![knn-correlation.png](file:knn-correlation.png)

* Replace the *Initial Transforms* section of the correlation loader with *Template*, allowing for a more flexible and customisable means of appending additional transforms and visualisations

 ![correlation-template-parameters.png](file:correlation-template-parameters.png)

* Add ability to save correlation plot images on a per attribute value basis, e.g. saving one image per cluster

#### Miscellaneous
* In plugins that have a data table, the source, target and neighbour rows can now be selected
* Graph metrics display now reflects the visible component, when in component mode
* Add option to interpret trackpad pan gestures as zooming; this is primarily useful for users of the Apple *Magic Mouse*, where it's more intuitive for scrolling vertically to map to zooming

#### Bug Fixes
* Bring MCL inline with the reference implementation by not skipping single node clusters
* Fix pairwise exporter introducing extra quotes into its output
* Fix crash that occurred when changing the graph with the *Find* interface active
* Prevent showing the main context menu over the *Find* interface
* Fix delay in showing *Find By Attribute* interface when an attribute has a large quantity of values
* Fix deadlock/crash when cancelling a command
* Fix initial dimensions on screenshot capture preset often being wrong
* Fix renderer not updating when focused labelling enabled
* Use the correct file extension when saving a non-native format
* Fix correlation plot data value sorting occasionally behaving oddly when node selection changes
* Fix changes to transform flags (locked, pinned) not being properly undoable
* Fix blank graph rendering in some rare circumstances
* Fix potential crash that might occur when changing the find attribute multiple times
* Fix graph size estimate plot inappropriately showing \\"Empty Graph\\" in some circumstances
* Fix poor behaviour when loading correlation data with anonymous columns
* Fix \\"ghost\\" node selection box appearing after an unusual combination of mouse drags and key presses
* Fix temporary lock-up at the end of a transform application
* Fix visually overlapping components when nodes move from one component to another
* Fix crash when reloading certain save files where nodes have been manually deleted

#### Other
* Move code base to Qt 6/Qt Quick 2 (Please [report](https://github.com/graphia-app/graphia/issues) bugs/regressions)
* macOS builds now take advantage of *Apple M1* hardware
* Capture more debug output on Windows
* Improve video driver crash detection
* Collect more information when a *std::exception* based crash occurs
* Improve macOS update script to deal with the case where the target .app has been renamed
* Improve installer error message on macOS when target directory is not writeable
* Allow selection of alternative UI themes where available

# 4.0 (Apr 24 2023)

# 4.0
---
#### Loading
* When there is a choice of file type or plugin to use, said choice can be set as a default, avoiding future prompts
* The file type selector of the file open dialog is now used to guide file type and plugin selection
* The pairwise file loader now has a front end that allows for the configuration of columns within the source data table, so it's no longer necessary for pairwise files to be strictly 2 or 3 columns

#### Transforms and Visualisations
* Add facility to select favourite transforms, which are displayed at the top of the transform list
* Add mechanism to save sets of transforms and visualisations for later recall

 ![templates.png](file:templates.png)

#### Attributes
* There is now an option (on the *Misc* tab of the *Options* dialog) to change the way *Find By Attribute Value* sorts the list of possible attribute values; it can now be done alphanumerically, in addition to the normal behaviour of sorting from the large to small set size

#### Correlation
* The correlation plot columns can now be sorted by data value
* The correlation plot is now vertically scrollable when it's too large for its container - i.e. when there are many column annotations
* In the correlation loader, input data can now be clipped against a constant, or by *[Winsorization](https://en.wikipedia.org/wiki/Winsorizing)*
* Correlation plot columns can now be sorted by hierarchical clustering, using the SLINK method with a Euclidean distance measure
* Add a *Filtering* option to correlation parameters, more specifically enabling the ability to filter edges using the *k-Nearest Neighbours* strategy; this is particularly useful with datasets that are extremely correlated, where traditional thresholding cannot adequately differentiate between rows

 ![knn-correlation.png](file:knn-correlation.png)

* Replace the *Initial Transforms* section of the correlation loader with *Template*, allowing for a more flexible and customisable means of appending additional transforms and visualisations

 ![correlation-template-parameters.png](file:correlation-template-parameters.png)

* Add ability to save correlation plot images on a per attribute value basis, e.g. saving one image per cluster

#### Miscellaneous
* In plugins that have a data table, the source, target and neighbour rows can now be selected
* Graph metrics display now reflects the visible component, when in component mode
* Add option to interpret trackpad pan gestures as zooming; this is primarily useful for users of the Apple *Magic Mouse*, where it's more intuitive for scrolling vertically to map to zooming

#### Bug Fixes
* Bring MCL inline with the reference implementation by not skipping single node clusters
* Fix pairwise exporter introducing extra quotes into its output
* Fix crash that occurred when changing the graph with the *Find* interface active
* Prevent showing the main context menu over the *Find* interface
* Fix delay in showing *Find By Attribute* interface when an attribute has a large quantity of values
* Fix deadlock/crash when cancelling a command
* Fix initial dimensions on screenshot capture preset often being wrong
* Fix renderer not updating when focused labelling enabled
* Use the correct file extension when saving a non-native format
* Fix correlation plot data value sorting occasionally behaving oddly when node selection changes
* Fix changes to transform flags (locked, pinned) not being properly undoable
* Fix blank graph rendering in some rare circumstances
* Fix potential crash that might occur when changing the find attribute multiple times
* Fix graph size estimate plot inappropriately showing \\"Empty Graph\\" in some circumstances
* Fix poor behaviour when loading correlation data with anonymous columns
* Fix \\"ghost\\" node selection box appearing after an unusual combination of mouse drags and key presses
* Fix temporary lock-up at the end of a transform application
* Fix visually overlapping components when nodes move from one component to another
* Fix crash when reloading certain save files where nodes have been manually deleted

#### Other
* Move code base to Qt 6/Qt Quick 2 (Please [report](https://github.com/graphia-app/graphia/issues) bugs/regressions)
* macOS builds now take advantage of *Apple M1* hardware
* Capture more debug output on Windows
* Improve video driver crash detection
* Collect more information when a *std::exception* based crash occurs
* Improve macOS update script to deal with the case where the target .app has been renamed
* Improve installer error message on macOS when target directory is not writeable
* Allow selection of alternative UI themes where available

# 3.2 (Nov 23 2022)

# 3.2
---
#### Bug Fixes
* Improve stability across all platforms, particularly with respect to the use of enrichment analysis
* Fix operation of *Copy Column To Clipboard* functionality
#### Linux
* Improve compatibility across a greater number of distributions

# 3.1
---
#### Bug Fixes
* Fix display not updating when focused labelling option used
* Fix occasional incorrect screenshot dimensions
* Fix text style options sometimes not taking effect immediately
* Fix adjacency matrix loader not setting node names
* Fix crash that occurred when the graph changed during a find
* Fix layout getting stuck on certain contracted graphs
* Fix crash that occurred sometimes when cancelling a command
* Fix transform flags (e.g. locked or pinned) not being properly recorded as an undoable step
* Fix GML saver creating key names with a leading digit (which is prohibted by the standard)
* Fix various issues with the GraphML saver
* Fix crash that occurred if the application is closed at a specific point of a load
* Fix import of attributes where the keys are large integers
* Fix crash when plotting an IQR with zero outliers
* Fix crash that occurred when flipping between find types multiple times
* Fix blank plugin window when multiple tabs open

# 3.0
---
#### Loading
* Downloadable files can now be opened directly, either by using the *Open Url* option in the *File* menu, or by dragging and dropping hyperlinks onto the main window
* A Graphia specific URL scheme is now registered so that the application may now be opened by clicking special hyperlinks; these can be created using the [Link Generator](https://graphia.app/link-generator.html)
* Tabular lists of node pairs can now be loaded from pairwise CSV, TSV, SSV and XLSX files
* Loading Cytoscape eXchange files is now possible, as used on [NDex](https://www.ndexbio.org/)
* Graphviz *.dot* files may now be loaded
* When loading from an adjacency matrix, it is now possible to choose to discard edges based on edge weight, and to skip double edges where the matrix is symmetric

 ![matrix-loader.jpg](file:matrix-loader.jpg)

#### Transforms
* Added *Forward Attribute* transform; for graphs with contracted edges, this will copy the selected attribute's values to all elements hidden by the contraction
* Added *Average Attribute* transform; create a new attribute whose values are determined by averaging the values of a numerical attribute on the basis of a categorical attribute - this allows for e.g. finding a cluster's average attribute value
* Clustering algorithms now create additional node attributes that reflect the size of the clusters in which the respective nodes belong, effectively allowing filtering operations on the size of clusters

#### Visualisations
* Visualisations that use deleted source attributes can now have their source attributes changed, in contrast to the prior behaviour where a broken visualisation would need to be deleted and recreated
* For numerical visualisations, the mapping of input value to output value can now be fine tuned

 ![edit-mapping.jpg](file:edit-mapping.jpg)

* An *Apply* button is now present on the gradient, palette and numeric mapping visualisation dialogs, for immediate preview of any changed settings

#### Attributes
* Attributes can now be imported, accessible via *Tools → Import Attributes From Table…*

 ![import-attributes.jpg](file:import-attributes.jpg)

* User defined attributes can now be removed if desired, accessible via *Tools → Remove Attributes…*
* Attributes can now be cloned, accessible via *Tools → Clone Attribute…*
* User defined attributes can now be edited, accessible via *Tools → Edit Attribute…*
* There is now search functionality in all the places where attributes are chosen; this is most useful when selecting a *Data Value* attribute in the case where there are many

 ![attribute-search.jpg](file:attribute-search.jpg)

* The node attribute table now has a context sensitive menu that provides options relevant to the clicked attribute
* The contents of a column from the node attribute table can now be copied to the clipboard, accessible by the context menu

#### Layout
* Layout settings are now accessible via a toolbar button
* Node and edge sizes are now saved in the *.graphia* file and are adjustable via *Layout Settings*
* Layout settings can now be saved as named presets, for quick access to frequently used settings

 ![layout-settings.jpg](file:layout-settings.jpg)

#### Enrichment
* When viewing enrichment results, the chosen attribute names are now used for the column headers
* The enrichment results table is now formatted in a way that improves Microsoft Excel's interpretation of it, when exported
* Enrichment data columns are now correctly named regarding the the metrics actually employed

#### Correlation
* Correlating tables of discrete values is now possible, using the *Jaccard Index* or *Simple Matching Coefficient* algorithms
* For continuous correlation, the *Euclidean Distance*, *Cosine Similarity* and *Biweight Midcorrelation (Bicor)* algorithms are now available

 ![correlation-algorithms.jpg](file:correlation-algorithms.jpg)

* Column annotation colours are now assigned by palette rather than by hashing the string value
* Numerical column annotations are now displayed using a gradient
* In the data plot, values can now be scaled by an attribute value
* The epsilon used when log scaling data is now computed to use an appropriately sized value rather than a fixed constant
* When loading correlation data with duplicate attribute column names, these are now considered separately rather than overwriting each other
* The data plot can now be panned by dragging and zoomed using the mouse wheel
* In the plot, data can now be combined into IQR boxplots based on one or more annotations, enabled by selecting *Group By Annotation* in the *Plot* menu
* Furthermore, when *Group By Annotation* is enabled there is now another option to colour the IQR boxes with a user selected annotation

 ![group-by-annotation.jpg](file:group-by-annotation.jpg)

* When displaying IQR plots, outliers can now be disabled by toggling the *Show Outliers* menu option
* Various buttons have been added to the tool bar to control the correlation plot
* Data can now be log scaled when rendering IQR boxplots

#### Miscellaneous
* Hyperlinks in table cells are now clickable and some [basic HTML 3.2](https://doc.qt.io/qt-5/qml-qtquick-text.html#textFormat-prop) can be displayed

 ![clickable-link.jpg](file:clickable-link.jpg)

* A log is now made of the steps taken in the graph's creation, accessible via *Tools → Show Provenance Log…*

 ![provenance-log.jpg](file:provenance-log.jpg)

* There is now an option to stay in component mode when finding, by default off
* The *Latest Changes* option was added to the *Help* menu, which shows any new changes present in the running version

#### Bug Fixes

* Fix loading GML files where the edges precede the nodes
* Fix crash when loading from empty files
* Fix Matlab loader not handling some forms of adjacency matrix
* Fix empty values being included in enrichment results
* Fix plot grid lines getting incorrectly enabled in some circumstances
* Fix missing column annotations where there were a large number of unique values
* Fix possibility of dismissing the correlation parameters dialog before the data frame had been found
* Fix occasionally ambiguous Esc key shortcut
* Fix crash involving search and selection
* Fix crash caused by graph visuals being altered during a graph change
* Fix palette editor behaviour when there are few assignable values
* Fix attribute ranges and shared values not getting updated in some circumstances
* Fix transforms and visualisations not being refreshed when referenced attribute values change
* Fix various issues involving attributes that change values and/or type during transforms
* Fix malformed tab titles when the source file name contains periods
* Fix wrong initial save file name
* Fix empty graph warning being displayed before correlation estimate completes
* Fix visualisation attribute list not updating following attribute changes
* Fix crash on correlation plot when moving the mouse along a particular path

#### Performance
* Generally improved performance when there are a large number of components
* Add option to disable multisampling, yielding a performance improvement
* Add text to the *Options* dialog on macOS, suggesting opening the application in *Low Resolution Mode* for a further performance improvement
* Improve performance of attributes model
* Improved correlation data plot IQR rendering performance
* Redundant correlation plot redraws have been reduced
* Improve correlation column annotation rendering performance
* Improve correlation column annotation sort performance

#### Linux
* An XDG desktop item is now automatically created, so Graphia will appear in system menus

# 3.1 (Jul 18 2022)

# 3.1
---
#### Bug Fixes
* Fix display not updating when focused labelling option used
* Fix occasional incorrect screenshot dimensions
* Fix text style options sometimes not taking effect immediately
* Fix adjacency matrix loader not setting node names
* Fix crash that occurred when the graph changed during a find
* Fix layout getting stuck on certain contracted graphs
* Fix crash that occurred sometimes when cancelling a command
* Fix transform flags (e.g. locked or pinned) not being properly recorded as an undoable step
* Fix GML saver creating key names with a leading digit (which is prohibted by the standard)
* Fix various issues with the GraphML saver
* Fix crash that occurred if the application is closed at a specific point of a load
* Fix import of attributes where the keys are large integers
* Fix crash when plotting an IQR with zero outliers
* Fix crash that occurred when flipping between find types multiple times
* Fix blank plugin window when multiple tabs open

# 3.0
---
#### Loading
* Downloadable files can now be opened directly, either by using the *Open Url* option in the *File* menu, or by dragging and dropping hyperlinks onto the main window
* A Graphia specific URL scheme is now registered so that the application may now be opened by clicking special hyperlinks; these can be created using the [Link Generator](https://graphia.app/link-generator.html)
* Tabular lists of node pairs can now be loaded from pairwise CSV, TSV, SSV and XLSX files
* Loading Cytoscape eXchange files is now possible, as used on [NDex](https://www.ndexbio.org/)
* Graphviz *.dot* files may now be loaded
* When loading from an adjacency matrix, it is now possible to choose to discard edges based on edge weight, and to skip double edges where the matrix is symmetric

 ![matrix-loader.jpg](file:matrix-loader.jpg)

#### Transforms
* Added *Forward Attribute* transform; for graphs with contracted edges, this will copy the selected attribute's values to all elements hidden by the contraction
* Added *Average Attribute* transform; create a new attribute whose values are determined by averaging the values of a numerical attribute on the basis of a categorical attribute - this allows for e.g. finding a cluster's average attribute value
* Clustering algorithms now create additional node attributes that reflect the size of the clusters in which the respective nodes belong, effectively allowing filtering operations on the size of clusters

#### Visualisations
* Visualisations that use deleted source attributes can now have their source attributes changed, in contrast to the prior behaviour where a broken visualisation would need to be deleted and recreated
* For numerical visualisations, the mapping of input value to output value can now be fine tuned

 ![edit-mapping.jpg](file:edit-mapping.jpg)

* An *Apply* button is now present on the gradient, palette and numeric mapping visualisation dialogs, for immediate preview of any changed settings

#### Attributes
* Attributes can now be imported, accessible via *Tools → Import Attributes From Table…*

 ![import-attributes.jpg](file:import-attributes.jpg)

* User defined attributes can now be removed if desired, accessible via *Tools → Remove Attributes…*
* Attributes can now be cloned, accessible via *Tools → Clone Attribute…*
* User defined attributes can now be edited, accessible via *Tools → Edit Attribute…*
* There is now search functionality in all the places where attributes are chosen; this is most useful when selecting a *Data Value* attribute in the case where there are many

 ![attribute-search.jpg](file:attribute-search.jpg)

* The node attribute table now has a context sensitive menu that provides options relevant to the clicked attribute
* The contents of a column from the node attribute table can now be copied to the clipboard, accessible by the context menu

#### Layout
* Layout settings are now accessible via a toolbar button
* Node and edge sizes are now saved in the *.graphia* file and are adjustable via *Layout Settings*
* Layout settings can now be saved as named presets, for quick access to frequently used settings

 ![layout-settings.jpg](file:layout-settings.jpg)

#### Enrichment
* When viewing enrichment results, the chosen attribute names are now used for the column headers
* The enrichment results table is now formatted in a way that improves Microsoft Excel's interpretation of it, when exported
* Enrichment data columns are now correctly named regarding the the metrics actually employed

#### Correlation
* Correlating tables of discrete values is now possible, using the *Jaccard Index* or *Simple Matching Coefficient* algorithms
* For continuous correlation, the *Euclidean Distance*, *Cosine Similarity* and *Biweight Midcorrelation (Bicor)* algorithms are now available

 ![correlation-algorithms.jpg](file:correlation-algorithms.jpg)

* Column annotation colours are now assigned by palette rather than by hashing the string value
* Numerical column annotations are now displayed using a gradient
* In the data plot, values can now be scaled by an attribute value
* The epsilon used when log scaling data is now computed to use an appropriately sized value rather than a fixed constant
* When loading correlation data with duplicate attribute column names, these are now considered separately rather than overwriting each other
* The data plot can now be panned by dragging and zoomed using the mouse wheel
* In the plot, data can now be combined into IQR boxplots based on one or more annotations, enabled by selecting *Group By Annotation* in the *Plot* menu
* Furthermore, when *Group By Annotation* is enabled there is now another option to colour the IQR boxes with a user selected annotation

 ![group-by-annotation.jpg](file:group-by-annotation.jpg)

* When displaying IQR plots, outliers can now be disabled by toggling the *Show Outliers* menu option
* Various buttons have been added to the tool bar to control the correlation plot
* Data can now be log scaled when rendering IQR boxplots

#### Miscellaneous
* Hyperlinks in table cells are now clickable and some [basic HTML 3.2](https://doc.qt.io/qt-5/qml-qtquick-text.html#textFormat-prop) can be displayed

 ![clickable-link.jpg](file:clickable-link.jpg)

* A log is now made of the steps taken in the graph's creation, accessible via *Tools → Show Provenance Log…*

 ![provenance-log.jpg](file:provenance-log.jpg)

* There is now an option to stay in component mode when finding, by default off
* The *Latest Changes* option was added to the *Help* menu, which shows any new changes present in the running version

#### Bug Fixes

* Fix loading GML files where the edges precede the nodes
* Fix crash when loading from empty files
* Fix Matlab loader not handling some forms of adjacency matrix
* Fix empty values being included in enrichment results
* Fix plot grid lines getting incorrectly enabled in some circumstances
* Fix missing column annotations where there were a large number of unique values
* Fix possibility of dismissing the correlation parameters dialog before the data frame had been found
* Fix occasionally ambiguous Esc key shortcut
* Fix crash involving search and selection
* Fix crash caused by graph visuals being altered during a graph change
* Fix palette editor behaviour when there are few assignable values
* Fix attribute ranges and shared values not getting updated in some circumstances
* Fix transforms and visualisations not being refreshed when referenced attribute values change
* Fix various issues involving attributes that change values and/or type during transforms
* Fix malformed tab titles when the source file name contains periods
* Fix wrong initial save file name
* Fix empty graph warning being displayed before correlation estimate completes
* Fix visualisation attribute list not updating following attribute changes
* Fix crash on correlation plot when moving the mouse along a particular path

#### Performance
* Generally improved performance when there are a large number of components
* Add option to disable multisampling, yielding a performance improvement
* Add text to the *Options* dialog on macOS, suggesting opening the application in *Low Resolution Mode* for a further performance improvement
* Improve performance of attributes model
* Improved correlation data plot IQR rendering performance
* Redundant correlation plot redraws have been reduced
* Improve correlation column annotation rendering performance
* Improve correlation column annotation sort performance

#### Linux
* An XDG desktop item is now automatically created, so Graphia will appear in system menus

# 3.0 (Feb 07 2022)

#### Loading
* Downloadable files can now be opened directly, either by using the *Open Url* option in the *File* menu, or by dragging and dropping hyperlinks onto the main window
* A Graphia specific URL scheme is now registered so that the application may now be opened by clicking special hyperlinks; these can be created using the [Link Generator](https://graphia.app/link-generator.html)
* Tabular lists of node pairs can now be loaded from pairwise CSV, TSV, SSV and XLSX files
* Loading Cytoscape eXchange files is now possible, as used on [NDex](https://www.ndexbio.org/)
* Graphviz *.dot* files may now be loaded
* When loading from an adjacency matrix, it is now possible to choose to discard edges based on edge weight, and to skip double edges where the matrix is symmetric

 ![matrix-loader.jpg](file:matrix-loader.jpg)

#### Transforms
* Added *Forward Attribute* transform; for graphs with contracted edges, this will copy the selected attribute's values to all elements hidden by the contraction
* Added *Average Attribute* transform; create a new attribute whose values are determined by averaging the values of a numerical attribute on the basis of a categorical attribute - this allows for e.g. finding a cluster's average attribute value
* Clustering algorithms now create additional node attributes that reflect the size of the clusters in which the respective nodes belong, effectively allowing filtering operations on the size of clusters

#### Visualisations
* Visualisations that use deleted source attributes can now have their source attributes changed, in contrast to the prior behaviour where a broken visualisation would need to be deleted and recreated
* For numerical visualisations, the mapping of input value to output value can now be fine tuned

 ![edit-mapping.jpg](file:edit-mapping.jpg)

* An *Apply* button is now present on the gradient, palette and numeric mapping visualisation dialogs, for immediate preview of any changed settings

#### Attributes
* Attributes can now be imported, accessible via *Tools → Import Attributes From Table…*

 ![import-attributes.jpg](file:import-attributes.jpg)

* User defined attributes can now be removed if desired, accessible via *Tools → Remove Attributes…*
* Attributes can now be cloned, accessible via *Tools → Clone Attribute…*
* User defined attributes can now be edited, accessible via *Tools → Edit Attribute…*
* There is now search functionality in all the places where attributes are chosen; this is most useful when selecting a *Data Value* attribute in the case where there are many

 ![attribute-search.jpg](file:attribute-search.jpg)

* The node attribute table now has a context sensitive menu that provides options relevant to the clicked attribute
* The contents of a column from the node attribute table can now be copied to the clipboard, accessible by the context menu

#### Layout
* Layout settings are now accessible via a toolbar button
* Node and edge sizes are now saved in the *.graphia* file and are adjustable via *Layout Settings*
* Layout settings can now be saved as named presets, for quick access to frequently used settings

 ![layout-settings.jpg](file:layout-settings.jpg)

#### Enrichment
* When viewing enrichment results, the chosen attribute names are now used for the column headers
* The enrichment results table is now formatted in a way that improves Microsoft Excel's interpretation of it, when exported
* Enrichment data columns are now correctly named regarding the the metrics actually employed

#### Correlation
* Correlating tables of discrete values is now possible, using the *Jaccard Index* or *Simple Matching Coefficient* algorithms
* For continuous correlation, the *Euclidean Distance*, *Cosine Similarity* and *Biweight Midcorrelation (Bicor)* algorithms are now available

 ![correlation-algorithms.jpg](file:correlation-algorithms.jpg)

* Column annotation colours are now assigned by palette rather than by hashing the string value
* Numerical column annotations are now displayed using a gradient
* In the data plot, values can now be scaled by an attribute value
* The epsilon used when log scaling data is now computed to use an appropriately sized value rather than a fixed constant
* When loading correlation data with duplicate attribute column names, these are now considered separately rather than overwriting each other
* The data plot can now be panned by dragging and zoomed using the mouse wheel
* In the plot, data can now be combined into IQR boxplots based on one or more annotations, enabled by selecting *Group By Annotation* in the *Plot* menu
* Furthermore, when *Group By Annotation* is enabled there is now another option to colour the IQR boxes with a user selected annotation

 ![group-by-annotation.jpg](file:group-by-annotation.jpg)

* When displaying IQR plots, outliers can now be disabled by toggling the *Show Outliers* menu option
* Various buttons have been added to the tool bar to control the correlation plot
* Data can now be log scaled when rendering IQR boxplots

#### Miscellaneous
* Hyperlinks in table cells are now clickable and some [basic HTML 3.2](https://doc.qt.io/qt-5/qml-qtquick-text.html#textFormat-prop) can be displayed

 ![clickable-link.jpg](file:clickable-link.jpg)

* A log is now made of the steps taken in the graph's creation, accessible via *Tools → Show Provenance Log…*

 ![provenance-log.jpg](file:provenance-log.jpg)

* There is now an option to stay in component mode when finding, by default off
* The *Latest Changes* option was added to the *Help* menu, which shows any new changes present in the running version

#### Bug Fixes

* Fix loading GML files where the edges precede the nodes
* Fix crash when loading from empty files
* Fix Matlab loader not handling some forms of adjacency matrix
* Fix empty values being included in enrichment results
* Fix plot grid lines getting incorrectly enabled in some circumstances
* Fix missing column annotations where there were a large number of unique values
* Fix possibility of dismissing the correlation parameters dialog before the data frame had been found
* Fix occasionally ambiguous Esc key shortcut
* Fix crash involving search and selection
* Fix crash caused by graph visuals being altered during a graph change
* Fix palette editor behaviour when there are few assignable values
* Fix attribute ranges and shared values not getting updated in some circumstances
* Fix transforms and visualisations not being refreshed when referenced attribute values change
* Fix various issues involving attributes that change values and/or type during transforms
* Fix malformed tab titles when the source file name contains periods
* Fix wrong initial save file name
* Fix empty graph warning being displayed before correlation estimate completes
* Fix visualisation attribute list not updating following attribute changes
* Fix crash on correlation plot when moving the mouse along a particular path

#### Performance
* Generally improved performance when there are a large number of components
* Add option to disable multisampling, yielding a performance improvement
* Add text to the *Options* dialog on macOS, suggesting opening the application in *Low Resolution Mode* for a further performance improvement
* Improve performance of attributes model
* Improved correlation data plot IQR rendering performance
* Redundant correlation plot redraws have been reduced
* Improve correlation column annotation rendering performance
* Improve correlation column annotation sort performance

#### Linux
* An XDG desktop item is now automatically created, so Graphia will appear in system menus

# 2.2 (Jan 27 2021)

#### Bug Fixes

* Fix Visual Studio runtime not being copied to installation directory on Windows

# 2.1 (Dec 18 2020)

#### Bug Fixes

* Fix GraphML parser failing on some input files
* Fix node selection not working after a specific sequence of transforms
* Fix crash that occurred when an attribute was destroyed and recreated with the same name, but a different element type
* Fix crash that occurred after selecting some nodes, then cycling a transform a number of times
* Fix 'Remove Leaves' transform behaving inconsistently with respect to singletons
* Prevent the possibility of creating invalid transforms, in some circumstances
* Fix double clicking a transform name in the transform creation dialog disabling subsequent initial mouse click
* Fix various renderer crashes
* Fix empty values being included in enrichment results
* Fix enrichment result table cells being interpreted as dates in *Microsoft Excel*
* macOS
 amend-existing-head.sh changelog.md CNAME confirm-upload.sh diff.sh generate-changelog.md.sh index.json Fix help tool tips being badly sized
 amend-existing-head.sh changelog.md CNAME confirm-upload.sh diff.sh generate-changelog.md.sh index.json Fix flickering of windows when adjusting the correlation plot
 amend-existing-head.sh changelog.md CNAME confirm-upload.sh diff.sh generate-changelog.md.sh index.json Fix the WebSearch plugin being broken
* Linux
 amend-existing-head.sh changelog.md CNAME confirm-upload.sh diff.sh generate-changelog.md.sh index.json Improve distribution compatibility
 amend-existing-head.sh changelog.md CNAME confirm-upload.sh diff.sh generate-changelog.md.sh index.json Fix crashes with WebSearch plugin on some platforms

# 2.0 (May 22 2020)

#### 2.0 Final Release



