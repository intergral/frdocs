#  Slack 

<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/1029245689?title=0&amp;byline=0&amp;portrait=0&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture; clipboard-write" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="OpsPilot Slack Integration"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

## Installation 

![!Screenshot](/Data-insights/Features/OpsPilot/images/add-slack.png)


1. In OpsPilot Hub, navigate to the Integrations tab.
2. Click **Add Integration** and select Slack from the available integrations.
3. Click the **Install** button, which will redirect you to Slack.
4. In Slack, you'll see a permissions window - review and click **Allow**.

![!Screenshot](/Data-insights/Features/OpsPilot/images/slack-allow.png)


5. Select your desired workspace if you have multiple workspaces.
6. Once allowed, OpsPilot will appear in your Slack sidebar.

!!! info
    If OpsPilot doesn't appear immediately in the sidebar, click **Add Apps** and find it in your installed apps.

## Configuration

1. Return to OpsPilot Hub after installation.
2. Click **Generate** to create an API key.
3. Copy the generated API key.
4. In Slack, navigate to the OpsPilot app.
5. Paste the API key and submit.
6. Your Slack workspace is now connected to OpsPilot.

![!Screenshot](/Data-insights/Features/OpsPilot/images/slack.png)




!!! note
    Only Slack administrators can enter the API key. Non-admin users will see a message prompting them to contact an admin for setup.

## Features

### Direct Messaging

- Access OpsPilot directly through DMs.
- Send messages to get responses just like in the browser interface.
- Get visual confirmation of processing with eyeball indicators.
- Supports image uploads for vision-related queries.
- Graphs and visualizations are provided as static images.

### Channel Integration

- Use **@OpsPilot** in any channel where the app is present.
- OpsPilot reads the last 20 messages in the channel or thread for context.
- Threads are recommended for better context management.

### Message Shortcuts

To access shortcuts:

1. Click the three dots menu on any message.
2. Click **More message shortcuts**, if shortcuts aren't visible.
3. Two options available:
    - **Ask OpsPilot**: Gets a response in the channel for everyone to see.
    - **Ask OpsPilot in DM**: Gets a private response about the message.

## Limitations

- Can only be installed to a single Slack workspace at a time.
- Shortcuts only work in channels where OpsPilot has access.
- Cannot access private messages or group chats unless explicitly invited.
- Responses are not streamed (must wait for complete response).
- Graphs are non-interactive (unlike browser version).

## API Key Management

- The API key is workspace-wide (one key for all users).
- Keys can be regenerated from the OpsPilot Hub.
- Regenerating invalidates the previous key.
- Requires admin to reconnect with new key if regenerated.



## Best Practices

1. Use threads for focused discussions to ensure relevant context.
2. For channel messages, be aware that OpsPilot only sees the last 20 messages.
3. Add OpsPilot to relevant channels where automated assistance is needed.
4. Use direct messages for private queries.
5. Utilize shortcuts for quick access to OpsPilot's features.

## Visual Indicators

- Eyeball emoji: OpsPilot is processing
- Tick emoji: Successful response
- Cross emoji: Error occurred
