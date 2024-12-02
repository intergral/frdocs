<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/1026154637?title=0&amp;byline=0&amp;portrait=0&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture; clipboard-write" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="FusionReactor OpsPilot: Jira Integration Overview"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

OpsPilot's Jira integration enables seamless ticket management and tracking directly through the OpsPilot interface. This integration supports both Atlassian Cloud and Data Center deployments.

![!Screenshot](/../Cloud/guides/OpsPilot/images/Jira1.png)

!!! info
    Single project integration per connection.


## Setting up the integration

### Prerequisites
- A valid Jira account with administrative access.
- For Cloud installations: Access to Atlassian Cloud administration.
- For Data Center installations: Your Jira instance URL and access token.

### Installation methods

There are two ways to add the Jira integration:

**Available Integrations Tab**

- Navigate to the **Integrations** page. 
- Select the **Available** tab.
- Locate and click on the **Jira** integration. 
- Follow the connection dialog prompts.

**Quick Add**

- Click the integration **Quick-add** button in the top right.
- Select **Jira** from the available options.
- Follow the connection dialog prompts.

### Connection types

 - Jira Cloud: Best for organizations using Jira through Atlassian's cloud platform.

- Jira Data Center: Best for self-hosted Jira instances or organizations requiring complete control over their Jira deployment.


## Jira Cloud installation 

Jira Cloud integration requires downloading our app from the [Atlassian Marketplace](https://marketplace.atlassian.com/vendors/1227151/)

![!Screenshot](/../Cloud/guides/OpsPilot/images/jira-connect.png)

### Add Jira integration:

1. Click the Install button on the **OpsPilot Hub** page, or install from the Jira marketplace.
2. If prompted, select your Jira instance.
3. Review and accept the app permissions.
4. Wait for the installation to complete.
5. Click the **Configure** button on the OpsPilot Jira application.
6. On the configuration page, click the **Connect** button and follow any further prompts.
7. The following screen is displayed after once installation is complete:

![!Screenshot](/../Cloud/guides/OpsPilot/images/jira-successful.png)


After successfully connecting the Jira integration, the configuration screen is displayed: 

![!Screenshot](/../Cloud/guides/OpsPilot/images/Jira-config.png)

!!! note
    An account can be disconnected at any time. Upon disconnection, OpsPilot immediately loses access to Jira features for that specific account.

## Jira Data Centre installation


To integrate OpsPilot with your Jira Data Center instance, you'll need:

* A publicly accessible Jira server URL
* A Personal Access Token (PAT)


![!Screenshot](/../Cloud/guides/OpsPilot/images/OpsPilot/data-centre.png)


!!! tip
	Create a dedicated Jira service account (e.g. OpsPilot) for the integration rather than using personal accounts. This ensures clear tracking of OpsPilot-generated content, maintains consistent permissions, and provides integration stability independent of staff changes.


### Create an access token 

1. Log in to Jira as an administrator.
2. Go to **User Management** > **Users**.
3. Click **Create User** and enter the following details:
    - Username: OpsPilot
    - Email: [Enter email] 
    !!! note
        Enter any valid email format - this field is not validated against actual email addresses.
 
    - Password: [Set secure password]

4. Assign admin permissions:
    - Navigate to the **Groups** tab.
    - Add OpsPilot to the **jira-administrators** group.

5. Create Personal Access Token:
    - Log in as OpsPilot.
    - Navigate to **Profile** > **Personal Access Tokens**.
    - Click **Create token**.
    - Name the token and set no expiry.
    - Copy the generated token.

!!! info
    A customer can connect the same Jira instance to multiple different FusionReactor/OpsPilot accounts.


## Managing your integration

### Project selection & permissions
After connecting Jira, configure your integration by selecting a project:

1. Navigate to OpsPilot Hub.
2. Open the Jira integration settings.
3. Choose a project from the dropdown menu.

!!! info
    All configuration changes require saving through the **Update JIRA** button to take effect.

The selected project can be changed at any time from the Jira integration page in OpsPilot Hub.

![!Screenshot](/../Cloud/guides/OpsPilot/images/update-jira.png)

When a project is selected, OpsPilot can:

- Look up existing issues
- Create new issues
- Add comments to issues
- Search within project content

![!Screenshot](/../Cloud/guides/OpsPilot/images/create-ticket.png)



!!! Note
    A project must be selected after connecting Jira for the integration to function. Without project selection, OpsPilot cannot perform any Jira-related actions.


### Creating tickets

1. OpsPilot automatically checks for similar existing tickets.
2. Preview form provides editing capabilities for:
    - Title
    - Description
    - Priority


#### Supported issue types
- Tasks
- Bugs
- New features
- Epics

!!! info 
    OpsPilot can automatically determine the appropriate issue type based on ticket content if not specified.

#### Custom fields support

OpsPilot supports various custom fields including:

- Labels
- Fixed versions
- Custom project-specific fields

!!! Tip  
    OpsPilot can be trained through your knowledge base to handle custom fields according to your organization's preferences.

#### Comment management

- Add comments to existing tickets
- Automatic ticket linking
- Interactive clarification for ambiguous ticket references


#### Search capabilities
Search tickets by:

- Creator
- Time period
- Topic relevance
- Specific ticket details

#### Usage example 

![!Screenshot](/../Cloud/guides/OpsPilot/images/jira-example.png)

