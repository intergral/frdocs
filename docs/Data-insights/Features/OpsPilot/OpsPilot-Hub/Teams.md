# Microsoft Teams 

## Prerequisites
- Must be a Microsoft Teams administrator for your organization.
- Access to OpsPilot Hub.

![!Screenshot](/Data-insights/Features/OpsPilot/images/add-teams.png)




## Installation 

<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/1029180418?title=0&amp;byline=0&amp;portrait=0&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture; clipboard-write" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="OpsPilot Teams Integration"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

### Step 1: **Download the Integration**

   - Access OpsPilot Hub Integrations section.
   - Download the Teams integration ZIP file.

### Step 2: **Add to Microsoft Teams**

   - Go to [Teams Admin Center](https://admin.teams.microsoft.com).
   - Navigate to Teams apps → Manage apps.

![!Screenshot](/Data-insights/Features/OpsPilot/images/manage-apps.png)

   - Click Actions → Upload new app.

![!Screenshot](/Data-insights/Features/OpsPilot/images/upload-new-app.png)


   - Upload the OpsPilot ZIP file.

### Step 3: **Configure Setup Policy**
   - In Teams Admin Center, go to Teams apps → Setup policies.
   - Edit Global policy or create new one.

   ![!Screenshot](/Data-insights/Features/OpsPilot/images/manage-policies.png)

   - Click **Add apps** and search for **OpsPilot**.

   ![!Screenshot](/Data-insights/Features/OpsPilot/images/add-apps.png)

   - Select and add OpsPilot to the policy.

   ![!Screenshot](/Data-insights/Features/OpsPilot/images/install-op.png)

   - Save the policy (deployment may take up to 24 hours).

### Step 4: **User Setup**
   - Generate an API key from OpsPilot Hub.
   - Open Teams and go to the Apps tab.

   ![!Screenshot](/Data-insights/Features/OpsPilot/images/built-for-org.png)


   - Find OpsPilot under **Built for your organisation**.
   - Add the app and open it.
   - Navigate to the **Home** tab.

![!Screenshot](/Data-insights/Features/OpsPilot/images/home.png)

   - Enter the API key and click **Submit**.


![!Screenshot](/Data-insights/Features/OpsPilot/images/home2.png)



!!! info
    There is also a dropdown which allows for the app to be added in different contexts:
    ![!Screenshot](/Data-insights/Features/OpsPilot/images/open.png)





!!! note
    All other users in the organisation are now able to use the app as the API key is mapped to the organisation rather than the individual.

## Usage Contexts

### Personal Chat
- Direct one-on-one conversations with OpsPilot
- Functions similarly to standard OpsPilot

### Group Chats
- Mention @OpsPilot to invoke the bot
- Bot responds in the group context

### Channels/Teams
- Add OpsPilot to the Team
- Mention @OpsPilot to invoke
- Can be used in post titles and summaries
- Bot processes conversation history (up to 20 messages)

## Features & Limitations

### Available Features
- Basic chat functionality
- Integration with Teams contexts
- Message action support
- Conversation history processing

### Limitations
- No image upload capability
- Non-interactive graphs
- No real-time status updates (only "Thinking..." status)
- 20-message conversation history limit

## Actions

Two available message actions:

1. **Ask OpsPilot**: Invokes bot in current context.

2. **Ask OpsPilot in DMs**: Forwards message to private chat.



To use actions:

1. Hover over any message
2. Click the ellipsis (...)
3. Select desired OpsPilot action








