# dev-1547-g3beebadd (Wed Jul 21 15:12)

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

# dev-1350-g04d8368a (Mon May 3 13:10)

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

# dev-955-g9c051144 (Wed Jan 27 17:00)

#### Features

* Add attribute import functionality, accessible via *Tools → Import Attributes From Table…*
* Add option to disable multisampling, for a performance improvment, particularly on old hardware
* Add text to the Options dialog on macOS, suggesting opening the application in *Low Resolution Mode* for a further performance improvement
* Add option to stay in component mode when finding, by default off
* Format the enrichment results table in such a way improves Microsoft Excel's interpretation of it, when exported

#### Bug Fixes

* Fix empty values being included in enrichment results

# dev-838-g41f75ac1 (Dec 18 2020)

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

# dev-745-gafb88628 (Nov 11 2020)

#### Bug Fixes

* Fix crash when clicking off axis on correlation plot
* Fix crash when sorting column annotations during a tooltip update
* Prevent the possibility of creating invalid transforms, in some circumstances

#### Other

* Improve column annotation rendering performance
* Improve column annotation sort performance
* Improve performance of *AvailableAttributesModel*

# dev-730-gbf240c7a (Oct 1 2020)

#### Bug Fixes

* Fix dead lock that could occur when a command completes very quickly

# dev-628-g95ac4d0e-open-source (Apr 20 2020)

#### Bug Fixes
* Fix crash on Windows




# 2.2 (Wed Jul 21 15:12)

#### Bug Fixes

* Fix Visual Studio runtime not being copied to installation directory on Windows

# 2.1 (Wed Jul 21 15:12)

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
  * Fix help tool tips being badly sized
  * Fix flickering of windows when adjusting the correlation plot
  * Fix the WebSearch plugin being broken
* Linux
  * Improve distribution compatibility
  * Fix crashes with WebSearch plugin on some platforms

# 2.0-rc3 (May 8 2020)

#### Features
* Use Tango icons on Linux
* Replacement icons for the most inappropriate ones
* Final tweaks



# 2.0-rc2 (May 2 2020)

#### Bug Fixes
* Add missing Repeat Last Selection menu text
* Replace newlines with spaces in TableView cells
* Possible fix to bug involving closing application when multiple unsaved tabs are open




# 2.0-rc1 (Apr 25 2020)

#### Features
* 2.0 release candidate




# 2.0 (Wed Jul 21 15:12)

#### 2.0 Final Release



