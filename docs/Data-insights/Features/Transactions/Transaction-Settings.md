## Transaction Settings

**Transactions &gt; Settings** allows you to modify various elements and
behaviors relating to transaction metrics.

Transactions track the start and end of an operation as well as
additional meta data (metrics) associated with these operations. 

!!! example
    Transaction examples: WebRequests, JDBC, MongoDB, Hibernate calls etc.

**FusionReactor** tracks these unique types (which we call - flavors of
transactions) into discrete lists.  This allows the user to view the
transactions of a specific type.

**FusionReactor** differentiates between **Root Transactions** and **All
Transactions**. 

* **Root Transactions** are all top level / root transactions, i.e. they do
not have a parent transaction

!!! example 
    A WebRequest would be a root transaction.

**All Transactions** is the combined list of all transactions which
FusionReactor tracks, this includes Root Transactions and all the child
/ sub transactions.

### Settings

|Configuration|Description|Default|
|--- |--- |--- |
|**Mongo Text Limiting**|Enable/disable the description of a Mongo transaction being limited to a certain amount of characters (see **Number Of Characters** field).|Enabled|
|**Number of Characters**|This field is only applicable if **Mongo Text Limiting** is set to enabled. This is where you can specify how many characters you would like the Mongo descriptions to be limited to.|1024 Characters|
|**Query Location**|Enable/disable whether or not the code location of each Mongo query is recorded and displayed, which can be found on the **Transaction Details** page under the heading **Trace**.|Enabled|
|**Only Record Location On Queries Slower Than**|Specify a lower bound for when query locations should be recorded. Any queries that run longer than the specified time, will be recorded. This field is optional.|100ms|
|**Obfuscate Mongo Data**|Enabling this field will hide all Data regarding ALL Mongo transactions and place a question mark (?) in the description field. Disabling will allow the query to be in the transaction description.|Disabled|
|**Enable enhanced MongoDB transactions**|Use this to enable and disable the enhanced MongoDB Transactions. The Enhanced MongoDB Transactions are explained on the page Enhanced MongoDB Transactions.|Disable Transactions|
|**Capture MongoDB results**|Use this feature to capture the results of the MongoDB queries. (Requires **Enhanced MongoDB transaction** to be enabled) - Do Not Capture Results or Capture Results.|Do Not Capture Results|
|**MongoDB Explain**|This feature allows for automated explain for MongoDB queries. (Requires **Enhanced MongoDB transaction** to be enabled)|Enabled|
|**MongoDB Explain Threshold**|The minimum time before explain is run, in milliseconds.|3000|
|**MongoDB Explain Level**|This is the level at which to run the MongoDB explain. see https://docs.mongodb.com/manual/reference/method/cursor.explain/ - allPlansExecution, executionStats, queryPlanner.|allPlansExecution|


### CPU and Memory Tracking

|Configuration|Description|Default|
|--- |--- |--- |
|**CPU Allocated Bytes Tracking**|Determines when thread byte allocation is recorded for a transaction. <ul><li>Tracking for top level transactions (master transaction)</li><li>Tracking for all transactions (master and sub-transaction) Not tracked</li></ul>|Tracking for top level transactions (master transaction)|
**|CPU Time Tracking**|Determines when CPU time is recorded for a transaction.<ul><li>Tracking for top level transactions (master transaction)</li> <li>Tracking for all transactions (master and sub-transaction) Not tracked</li></ul>|Tracking for top level transactions (master transaction)|
|**Memory Tracking**|Determines when memory usage is recorded for a transaction.<ul><li>Tracking for top level transactions (master transaction)</li><li>Tracking for all transactions (master and sub-transaction) Not tracked</il><ul>|Tracking for top level transactions (master transaction)|

!!! info "Learn more"
    [SubFlavors](SubFlavors.md)
    [Transaction Naming](Transaction-Naming.md) example

___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.
