

The CPU Sampler has its own configuration model under the CPU Sampler
tab in Profiler Settings.

|Configuration|Description|
|--- |--- |
|Maximum Snapshot History|Refers to the maximum number of snapshots that can be stored on the CPU Snapshots page.
Reaching this limit will cause earlier snapshots to be deleted.|
|UI Row Limit|For increased performance, this configurations limits the number of rows rendered on the CPU Sampling page to the given value.
Information that has exceeded this limit will not be displayed. There will be a small message under the CPU Sampling table to notify the user that information might have been clipped.|
|Exclude Thread Names|Will exclude any threads from the sample result that match the given parameters.
Threads that are not required to be included in the sampler can be added to this list.
Creating a new line or adding a comma will separate thread names.|
