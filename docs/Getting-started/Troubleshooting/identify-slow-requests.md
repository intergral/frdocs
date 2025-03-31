# How to idemtify the real cause of slow requests



## Identifying the real cause of slow requests

!!! question
    We often see slow requests, but they may just be symptoms, not the actual problem. How can we tell the real cause (e.g., CPU-heavy process, database issue, etc.)?

There are a few things you can do to check the cause of slow requests, either by looking at the requests themselves or by examining the wider environment, including your database performance within the FusionReactor UI.

1. **Analyze the transaction(s) for slow sub-transactions:**  
    - Go to the Web Requests screen and select **History** or **Slow Transactions** from the dropdown.
    - Optionally, set a minimum request duration using the right-hand filter.
    - Select a slow-running request, then navigate to **Tracing -> Transaction Hierarchy**.
    - This view highlights the slowest path, helping to pinpoint where the transaction slowed down.
    - Send the slowest request into **OpsPilot** (using the dedicated button) to receive a performance analysis and suggested solutions.

2. **Examine the Detailed Trace:**  
    - On the same screen where you selected Tracing, find the button on the far right to access the **Detailed Trace**.
    - This trace shows all spans involved in the transaction, including external applications used.
    - Use this to pinpoint where delays occurred.

3. **Get an overview of server performance:**  
    - Navigate to **Explore -> Servers** to assess system-wide performance.
    - Use the left dropdown to group and filter data, and the right dropdown to choose metrics.
    - **Request Duration** and **Throughput** metrics indicate if performance is in a warning or critical state (thresholds can be adjusted here).
    - Clicking into any tile reveals a set of performance graphs, allowing deeper analysis of system load (adjustable via the timeframe dropdown at the top).

4. **Check database performance (if instrumented with OTEL agent):**  
    - Go to **Dashboards -> Integrations** to review database behavior.
    - This can reveal if the database is facing issues that may be impacting request speed.

