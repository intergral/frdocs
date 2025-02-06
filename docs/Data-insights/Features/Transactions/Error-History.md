# Error History

The **Transaction Error History** page is almost identical to
the [History](History.md) page, except that it
**only** shows transactions flagged by FusionReactor as being **in error.**

For WebRequest transactions, what constitutes an error is - by default
- HTTP return codes 500-599.  

!!! tip 
    This setting can be changed in **FusionReactor &gt; Settings &gt; Error Settings**, and is described in [Settings](../Settings/Main-Menu.md).

Other transactions may also be detected as erroneous:

!!! example
    JDBC requests which contain syntax errors.

___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.
