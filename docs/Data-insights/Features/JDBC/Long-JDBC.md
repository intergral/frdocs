# Longest Transactions: JDBCRequest

**JDBC &gt; Longest Transactions** will show a list of the all JDBC
longest transactions in a sequential order that have taken the highest
amount of time to complete on this instance.

!!! note
    FusionReactor only keeps a fixed default amount of
    transactions in memory. If the longest transactions list size gets too
    long or you restart you application server then any old transactions
    will be removed.

Change the size of the JDBC Longest
Transactions via: 

-   [JDBC+Settings](Settings.md) &gt; **History** &gt; 
    **Slow Request History Size** 

An example of the page can be seen below with the statement data
obfuscated. The image lists the statements by their highest time
taken to complete.

![](/frdocs/attachments/245551176/245551225.png)

!!!note
    The Longest Requests : JDBCRequest is the same as [Transaction->Long Transactions](../Transactions/Longest-Transactions.md) but filtered    
    to only show transactions of JDBC type.

!!! info "Learn more"
    [Transaction->Long Transactions](../Transactions/Longest-Transactions.md)
    

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.

