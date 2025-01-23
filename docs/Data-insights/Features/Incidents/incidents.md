

The **Incident Management Application** is a robust tool for tracking and resolving incidents in real-time. It streamlines incident workflows, enabling teams to manage tasks, update statuses, and maintain detailed activity logs with ease.

![!Screenshot](/frdocs/Data-insights/Features/Incidents/images/mainpg.png)


Incidents can be challenging, particularly during the critical initial stages of investigation and identification. FusionReactor's **Incidents** feature is packed with powerful, time-saving tools designed to help you respond swiftly and efficiently, minimizing downtime and streamlining your resolution process.

The application provides:

- Real-time incident tracking and resolution.
- Task assignment and progress monitoring.
- Comprehensive activity logs for auditing actions.
- Tools for efficient collaboration and communication.



## Key features & workflows


### Create a new incident

To create a new incident: 

1. Navigate to the **Incidents** page.
2. Click the **Declare Incident** button to open the incident creation form.

    ![!Screenshot](/frdocs/Data-insights/Features/Incidents/images/declare.png)

3. Fill in the required information:

    ![!Screenshot](/frdocs/Data-insights/Features/Incidents/images/createnew.png)

       - **Title**: A brief description of the incident.
       - **Severity**: Select from predefined levels (e.g. Critical, Major, Minor).
       - **Status**: Set the initial status (typically **Active**).
       - **Labels**: (Optional) Add tags to categorize the incident.
       - **Description**: Provide detailed information about the incident.

4. Click **Save** to create the incident.

!!! info
    Incident details such as title, start time, and labels can be updated at any time. 



### Manage tasks

FusionReactor's integrated task management system helps you coordinate incident response by organizing critical actions and assignments. Using the built-in task manager, your team can collaborate effectively, monitor progress, and ensure swift completion of all necessary response activities.

#### Add tasks

To add a task within a specific incident:

1. Navigate to the Tasks section of the incident, located on the right-hand sidebar.
2. Provide a brief description of the task.
3. Click on the +Task button.

#### Update tasks

To update and edit a task:

1. Click on a task to edit details.
2. Use the status dropdown to update progress.
3. Assign tasks to different team members as needed.
4. Mark tasks as complete when finished.

#### Assign tasks

Task assignment ensures clear accountability and provides visibility into ongoing activities. 

To assign a task:

1. Click on the people + icon next to the task.
2. Search for and select the user you want to assign the task to.

!!! tip
    Tasks can be unassigned or reassigned at any time. Simply click the assigned user, then choose Unassign User or search for another team member to reassign the task.

#### Update task status 

Tasks have three statuses:

-  **To Do**
-  **In Progress**
- **Done** 

To update a task's status: 

1. Click the checkbox next to the task.  
2. Each click cycles the task through the statuses in the following order:  
       - **To Do  → In Progress  → Done** 


### Label management

Labels transform your incident data into actionable insights by capturing key details like affected services, team involvement, and customer impact. Apply consistent labels to easily track patterns, filter similar incidents, and analyze trends across your incident history. This metadata becomes invaluable for identifying recurring issues, measuring team performance, and strengthening your incident response process over time.

#### Add labels
Labels are added during incident creation or via the **Add Label** button on the incident details page.

#### New labels


1. Navigate to the **Settings** page using the cog icon.
    ![!Screenshot](/frdocs/Data-insights/Features/Incidents/images/settings-icon.png)
2. Select **+ Add label**
2. Enter a name.
2. Choose a color.
3. Add a description.

![!Screenshot](/frdocs/Data-insights/Features/Incidents/images/newlabel.png)


!!! tip
    Remove labels by clicking the **x** on the label badge.



### Add comments/activities

Keep the incident timeline organized by adding formatted notes and updates about response activities.

1. In the **Activity** section, use the rich text editor to:
     - Write comments.
     - Format text or add links.
2. Click **Add note** to post your comment.
3. Comments appear chronologically in the activity timeline.


![!Screenshot](/frdocs/Data-insights/Features/Incidents/images/comment.png)



### Update incident status

An incident's status instantly communicates whether your team is actively responding or has resolved the issue. Active incidents show there's ongoing work to restore service, while resolved status signals that normal operations have resumed. This clear indicator helps everyone from responders to stakeholders know at a glance if they need to take action or can stand down.

To update an incident status: 

1. Use the **Status** dropdown on the incident details page.
2. Select a new status:
     - **Active**, **Resolved**, or other configured statuses.
3. If resolving the incident:
     - Provide a resolution summary.
     - Confirm the status change.



### Adjust severity

Incident severity levels tell you how serious an incident is and how quickly you need to act. By using consistent severity ratings, everyone in your organization can immediately understand how urgent each incident is and what response is needed.

Setting clear severity levels helps your team know who to involve and what actions to take. Define each severity level with specific criteria and response requirements so your team can respond effectively and consistently.

To adjust severity:

1. Click the **Severity** indicator on the incident.
2. Select the desired severity level (e.g., Critical, Major, Minor).
3. Changes are automatically logged in the activity timeline.



## Special features

### Activity timeline

The interactive timeline serves as your incident command center, providing a chronological view of all incident activities and enabling seamless collaboration. Responders can quickly scan past actions, review relevant context, and determine next steps without switching between multiple tools. 

The Incident Activity timeline:

1. Automatically logs all actions, including:
    - Status changes.
    - Comments.
    - Task updates.
2. Provides a clear audit trail of who made changes and when.

### Task management

Task management streamlines incident response by keeping teams coordinated and accountable for specific actions.

1. Filter tasks by status or user.
2. Track task progress with visual indicators.
3. Assign tasks to team members dynamically.

### User assignments

Strengthen your incident response by instantly bringing in the right experts and stakeholders using the **Add a user** feature. Whether you need hands-on responders or observers keeping track of progress, you can seamlessly expand your incident team with just a few clicks. Team members join with appropriate permissions, allowing them to immediately contribute to incident resolution or maintain situational awareness.

1. Assign users to tasks or roles directly from the incident view.
2. Track user involvement with activity logs.



## Tips & best practices

<details>
<summary><strong>Incident creation</strong></summary>

- Use clear, descriptive titles. <br>

- Assign severity levels thoughtfully.<br>

- Add relevant labels for easy categorization. <br>

- Provide comprehensive descriptions to minimize follow-ups. <br>
</details>

<details>
<summary><strong>Task management</strong></summary>

- Break down complex incidents into smaller, manageable tasks.<br>

- Assign tasks promptly to ensure accountability.<br>

- Regularly update task statuses to maintain visibility.<br>
</details>

<details>
<summary><strong>Activity logging</strong></summary>

- Document all significant actions and decisions.<br>

- Use rich text formatting for clarity.<br>

- Include links or references to related resources.<br>
</details>

<details>
<summary><strong>Label usage</strong></summary>

- Apply consistent naming conventions for labels.<br>

- Regularly review and update labels to reflect current needs.<br>
</details>

<details>
<summary><strong>Status updates</strong></summary>

- Keep incident statuses current. <br>

- Use comments to explain status changes when needed.
</details>



---

## Troubleshooting

Address common incident management challenges with these quick solutions.

| **Issue**                     | **Resolution**                                                   |
|-------------------------------|------------------------------------------------------------------|
| **Cannot Create Incident**    | Ensure all required fields are filled, valid severity selected. |
| **Task Updates Not Saving**   | Refresh the page or check your connection.                      |
| **Labels Not Appearing**      | Refresh the label list or check permissions.                    |
| **Status Changes Not Working**| Verify permissions and valid status transitions.               |

___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist. 


