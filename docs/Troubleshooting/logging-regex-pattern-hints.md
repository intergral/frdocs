# Logging Regex Pattern Hints

## Glob regex patterns

There are a few ways to specify a generic path where users have got logs that need to be picked up by the log matcher mechanism:

### Wildcards matching
- `?` is expanded to match a single character in the file name.

!!! example
    ```
    /home/app/server/custom_logs/?at.log
    ``` 
    would match
    ```
    /home/app/server/custom_logs/bat.log

    /home/app/server/custom_logs/cat.log

    /home/app/server/custom_logs/hat.log
    ```
- `*` is expanded to match 0 or more characters in the file name. This way users can search any folder within the current directory and pick filenames from within.

!!! example
    ```
    /home/app/server/custom_logs/*/*.log
    ```
    would match
    ```
    /home/app/server/custom_logs/monday/assets.log
    /home/app/server/custom_logs/tuesday/revenue.log
    /home/app/server/custom_logs/tuesday/assets.log
    ```

- `**` expands to match 0 or more folders in the path and follows any rules specified after the wildcard. Unlike the single asterisk it searches directories recursively and picks any file that match the specified rule. 

!!! example
    ```
    /home/app/server/custom_logs/**log
    ```

    would match
    ```
    /home/app/server/custom_logs/schedule.log
    /home/app/server/custom_logs/monday/assets.log
    /home/app/server/custom_logs/monday/address/properties.log
    /home/app/server/custom_logs/tuesday/assets.log
    /home/app/server/custom_logs/tuesday/revenue.log
    ```
### Character classes and ranges
Defining a range can be done using the square brackets operator `[ ... ]`. They are expanded to match a single character specified that are enclosed within.

!!! example
    ```
    /home/app/server/custom_logs/[bc]at.log
    ```

    would match
    ```
    /home/app/server/custom_logs/bat.log
    /home/app/server/custom_logs/cat.log
    ```
    Users can define ranges of characters as well by using the special convention character `-` within the square brackets. Ranges can be a mixture of upper and lower letters and/or numbers, e.g.

    ```
    /home/app/server/custom_logs/[A-H]at.log
    ```
    would match
    ```
    /home/app/server/custom_logs/Hat.log
    ```

### Complementation

Users can define to exclude a character by using the expression `[! ... ]`. This would match any character apart from the ones specified withing.

!!! example

    ```
    /home/app/server/custom_logs/[!bc]t.log
    ```
    would match
    ```
    /home/app/server/custom_logs/hat.log
    ```
    and would not match
    ```
    /home/app/server/custom_logs/cat.log
    ```
All these special characters can be escaped by using `\ `. So if the operating system allows the users to have a `*` in the file name, the regex can match it by adding `\*` to the glob expression.

___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.
