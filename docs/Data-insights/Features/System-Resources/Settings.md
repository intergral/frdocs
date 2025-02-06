## System Resources Settings

The '**Settings**' page contains all the configurable fields for the
System Resources section of Fusion Reactor.The page is split up into 2
sections:

### Disk

|Configuration|Description|Default|
|--- |--- |--- |
|HDD Notifications|If Enabled, a notification will be generated if the disk usage becomes greater than the 'Threshold' for longer than the 'Minimum Condition'|Enabled|
|Threshold|This field is used along side the 'HDD Notifications' and 'Minimum Condition Duration' fields. The Threshold is a value in percentage when the notification should be sent.|85|
|Minimum Condition Duration|This field is used alongside the 'HDD Notifications' and 'Threshold' fields. The Minimum Condition Threshold is the minimum time in seconds that the Threshold must be exceeded for the notification to be generated.|5|
|Log Device Detection|An Enable/Disable field that allows the user to specify whether devices inserted into the machine should be logged/detected. If set to Enabled, devices will be logged on the Device Log Page. Devices being inserted and removed will be logged on the device-log.log file.|Disabled|
|Notification on Device Detection|In addition to logging Device detection, notifications can be generated on device detection. if set to enabled, a notification will be sent, otherwise, no notification will be generated.|Disabled|

### CPU

|Configuration|Description|Default|
|--- |--- |--- |
|Per Core Sampling|An Enable/Disable field. if set to enabled, the CPU graph on the CPU page will have the option to show additional graphs.|Disabled|
