## Memory Settings

### Heap Histogram

The Heap Histogram settings controls the UI and snapshot heap histogram
files limits and filtering.   The live view has filtering and timeout
settings, but the snapshots can be configured to limit how much disk
usage would be used.

|Configuration|Description|Default|
|--- |--- |--- |
|Remove Old Snapshots|If true, old snapshots will be deleted when the maximum entry limit is hit. If the maximum snapshot limit is not set then nothing will be deleted.|Don't Remove|
|Maximum Snapshots|The maximum number of snapshot files to allow in one heap directory. If not set then the directory can have unlimited amount.|<none>|
|UI Row Limit|The maximum number of rows to show in the heap view pages. Large values can affect browser performance (and even crash older browsers).|250|
|Snapshot Directory|The directory to store the heap snapshots into. Changing this directory will not affect the old directory. It will still exist and will still contain the snapshots. All new snapshots will be created in this new directory.|<instancedir>/heap|
|Exclude Packages|A comma or newline separated list of packages to exclude from the memory snapshots.<br> E.g.<br>java.lang<br>java.util|com.intergral|
|Heap Histogram Timeout|The maximum time (in milliseconds) the heap histogram scanner will run for. This limits the native API call only (not FusionReactors UI or browser time)Leave this value empty for unlimited duration for the heap histogram generation (live + snapshot) but this cause the page to take a long time to generate on very large heaps.|1000|


### Garbage Collection Roots

The garbage collection roots settings control the pages which show the
garbage collection roots accessible from the Memory-&gt;Heap View page.

|Configuration|Description|Default|
|--- |--- |--- |
|GC Roots Timeout|The maximum time (in milliseconds) the garbage collection root scanner (GC Roots) will run for. This limits the native API call only (not FusionReactors UI or browser time)Leave this value empty for unlimited duration but this can cause the page to take a long time to generate on large heaps.|1000|
|GC Roots Max Tree Depth|The maximum UI tree depth for the garbage collection root page to show. This limits the UI and the datamodel size to prevent your browser becoming overloaded on large heaps.Leave this value empty for unlimited but this can cause the page to take a long time to load on large heaps.|10|
