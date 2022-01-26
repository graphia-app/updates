# dev-1811-g0ab9cf22 (Wed Jan 12 15:03)

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

# dev-1350-g04d8368a (May 3 2021)

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

# dev-955-g9c051144 (Jan 4 2021)

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

# dev-745-gafb88628 (Oct 9 2020)

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




# 3.0-rc1 (5 hours ago)

#### Loading
* Downloadable files can now be opened directly, either by using the *Open Url* option in the *File* menu, or by dragging and dropping hyperlinks onto the main window
* A Graphia specific URL scheme is now registered so that the application may now be opened by clicking special hyperlinks; these can be created using the [Link Generator](https://graphia.app/link-generator.html)
* Loading graphs from pairwise CSV, TSV, SSV and XLSX files is now possible, that is to say tabular lists of node pairs
* Loading Cytoscape eXchange files is now possible, as used on [NDex](https://www.ndexbio.org/)
* When loading from an adjacency matrix, it is now possible to choose to discard edges based on edge weight, and to skip double edges where the matrix is symmetric

  ![matrix-loader.jpg](file:matrix-loader.jpg)

* Graphviz *.dot* files may now be loaded
* Fix loading GML files where the edges precede the nodes
* Fix crash when loading from empty files
* Fix Matlab loader not handling some forms of adjacency matrix

#### Transforms
* Added *Forward Attribute* transform; for contracted edges, this will forward a selected attribute's values to all 'child' multi-elements
* Added *Average Attribute* transform; create a new attribute whose values are determined by averaging the values of a numerical attribute, using a categorical attribute
* Clustering algorithms now create node attributes reflecting the size of the clusters in which the respective nodes belong, effectively allowing filtering operations on the size of clusters
* Fix *Remove Leaves* transform behaving inconsistently with respect to singletons

#### Visualisations
* Erroring visualisations can now have their source attribute changed, i.e. so they can be 'repaired'
* For numerical visualisations, the mapping of input value to output value can now be fine tuned

  ![edit-mapping.jpg](file:edit-mapping.jpg)
* An *Apply* button is now present on the gradient, palette and numeric mapping visualisation dialogs, for immediate preview of settings

#### Attributes
* Attributes can now be imported, accessible via *Tools → Import Attributes From Table…*

  ![import-attributes.jpg](file:import-attributes.jpg)

* User attributes can now be removed if desired, accessible via *Tools → Remove Attributes…*
* Attributes can now be cloned, accessible via *Tools → Clone Attribute…*
* User attributes can now be edited, accessible via *Tools → Edit Attribute…*
* There is now search functionality in all the places where attributes are chosen; this is most useful when selecting a *Data Value* attribute in the case where there are many

  ![attribute-search.jpg](file:attribute-search.jpg)

* The node attribute table now has a context sensitive menu that provides options relevant to the clicked attribute
* The contents of a column from the node attribute table can now be copied to the clipboard, accessible by the context menu

#### Layout
* Layout settings are now accessible via a toolbar button
* Node and edge sizes are now saved in the *.graphia* file and are adjustable via *Layout Settings*
* Layout settings can now be saved as named presets, for quick access to frequently used settings

  ![layout-settings.jpg](file:layout-settings.jpg)

#### Miscellaneous
* Hyperlinks in table cells are now clickable and some [basic HTML 3.2](https://doc.qt.io/qt-5/qml-qtquick-text.html#textFormat-prop) can be displayed

  ![clickable-link.jpg](file:clickable-link.jpg)

* A log is now made of the steps taken in the graph's creation, accessible via *Tools → Show Provenance Log…*

  ![provenance-log.jpg](file:provenance-log.jpg)

* There is now an option to stay in component mode when finding, by default off
* The *Latest Changes* option was added to the *Help* menu, which shows any new changes present in the running version

#### Enrichment
* When viewing enrichment results, the chosen attribute names are now used for the column headers
* The enrichment results table is now formatted in a way that improves Microsoft Excel's interpretation of it, when exported
* Enrichment data columns are now correctly named regarding the the metrics actually employed
* Fix empty values being included in enrichment results

#### Correlation
* Correlating tables of discrete values is now possible, using the Jaccard Index or Simple Matching Coefficient algorithms
* For continuous correlation, the Euclidean Distance, Cosine Similarity and Biweight Midcorrelation (Bicor) algorithms are now available

  ![correlation-algorithms.jpg](file:correlation-algorithms.jpg)

* Column annotation colours are now assigned by palette rather than by hashing the string value
* Numerical column annotations are now displayed using a gradient
* In the correlation plot, values can now be scaled by an attribute value
* The epsilon used when log scaling data is now computed to use an appropriately sized value rather than a fixed constant
* When loading correlation data with duplicate attribute column names, these are now considered separately rather than overwriting each other
* The correlation plot can now be panned and zoomed by dragging and using the mouse wheel
* When displaying IQR plots, outliers can now be disabled by toggling the *Show Outliers* menu option
* In the plot, data can now be combined into IQR boxplots based on one or more annotations, enabled by selecting *Group By Annotation* in the *Plot* menu
* Furthermore, when *Group By Annotation* is enabled there is now another option to colour the IQR boxes with a user selected annotation

  ![group-by-annotation.jpg](file:group-by-annotation.jpg)

* Various buttons have been added to the tool bar to control the correlation plot
* Data can now be log scaled when rendering IQR boxplots
* Improved IQR rendering performance
* Fix plot grid lines getting incorrectly enabled in some circumstances
* Redundant plot redraws have been reduced
* Fix missing column annotations where there were a large number of unique values
* Improve column annotation rendering performance
* Improve column annotation sort performance
* Fix possibility of dismissing the correlation parameters dialog before the data rect had been found

#### Bug Fixes

* Fix double clicking a transform name in the transform creation dialog disabling subsequent initial mouse click
* Fix occasionally ambiguous Esc key shortcut
* Fix node selection not working after a specific sequence of transforms
* Fix crash that occurred after selecting some nodes, then cycling a transform a number of times
* Prevent the possibility of creating invalid transforms
* Fix crash involving search and selection
* Fix crash caused by graph visuals being altered during a graph change
* Fix palette editor behaviour when there are few assignable values
* Fix attribute ranges and shared values not getting updated in some circumstances
* Fix transforms and visualisations not being refreshed when referenced attribute values change
* Fix various issues involving attributes that change values and/or type during transforms
* Fix malformed tab titles when the source file name contains periods
* Fix wrong initial save file name
* Fix empty graph warning being displayed before estimate completes
* Fix visualisation attribute list not updating following attribute changes
* Fix crash on correlation plot when moving the mouse along a particular path

#### Performance
* Generally improved performance when there are a large number of components
* Add option to disable multisampling, yielding a performance improvment
* Add text to the *Options* dialog on macOS, suggesting opening the application in *Low Resolution Mode* for a further performance improvement
* Improve performance of attributes model

#### macOS
* Fix help tool tips being badly sized
* Fix flickering of windows when adjusting the correlation plot

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




# 2.0 (May 22 2020)

#### 2.0 Final Release



