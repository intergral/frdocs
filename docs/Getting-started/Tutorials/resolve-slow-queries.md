# Resolve slow queries

<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/1070253171?title=0&amp;byline=0&amp;portrait=0&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture; clipboard-write; encrypted-media" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="Troubleshooting Slow SQL Queries with FusionReactor"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

<br>

**Problem:** Your application is running slowly, and you suspect slow SQL queries are the cause.

**Solution using FusionReactor:**

1.  **Identify the bottleneck:**
    * Open FusionReactor (on-premise or cloud UI).
    * Navigate to **JDBC History** (found under your Servers page in the cloud UI).
    * **Sort** the transactions by the **Duration** column in descending order to see the longest running queries first.

2.  **Drill down into a slow transaction:**
    * Click on a transaction that took longer than expected.
    * Go to the **JDBC** tab within the transaction details.
    * Here you will see the **specific SQL query** that was executed and the time taken for different parts of the execution.

3.  **Analyze the SQL query:**
    * Carefully examine the text of the SQL query. Look for potential issues such as:
        * **Lack of appropriate indexes:** Is the query searching through large amounts of data without using indexes?
        * **Inefficient JOIN clauses:** Are tables being joined in a way that requires a lot of processing?
        * **Use of wildcards at the beginning of searches** (e.g., `LIKE '%value'`) which can prevent index usage.
        * **Selecting unnecessary columns** (`SELECT *`).

4.  **Implement optimizations:**
    * Based on your analysis, apply necessary optimizations. Common solutions include:
        * **Adding indexes** to frequently used columns in `WHERE` clauses and `JOIN` conditions.
        * **Rewriting the SQL query** to be more specific and efficient. For example, avoid `SELECT *` and only select necessary columns.
        * **Optimizing `JOIN` conditions** by ensuring appropriate columns are used and considering different join types.
        * **Restructuring database tables** if the current structure is causing performance issues.

5.  **Verify performance improvements:**
    * After making changes, **re-run** the problematic query (if possible in a testing environment).
    * Monitor the **JDBC History** in FusionReactor again.
    * Compare the **duration** of the transaction before and after your changes. You should see a significant reduction in execution time.
    * Keep an eye on overall application performance to ensure the changes have had the desired positive impact.

6.  **Proactive monitoring:**
    * Configure **Crash Protection alerts** in FusionReactor to notify you if SQL queries exceed определенные thresholds in the future. This helps you catch performance regressions early.


## Best practices for SQL performance

* Index frequently queried columns.
* Minimize the use of leading wildcards in `LIKE` clauses.
* Optimize `JOIN` operations by using appropriate join types and indexed columns.
* Only select the necessary columns in your queries.
* Regularly review and optimize your SQL queries.
* Use FusionReactor for continuous monitoring of SQL performance.

