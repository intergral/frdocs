## Services

<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/1024313749?title=0&amp;byline=0&amp;portrait=0&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture; clipboard-write" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="OpsPilot Services"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

The Services feature is a core component of OpsPilot Hub, designed to enhance the capabilities of the OpsPilot Assistant while providing a comprehensive system for documenting, managing, and discovering your organization's services. By populating the Services section with detailed information about your organization's offerings, you empower the OpsPilot Assistant to deliver more accurate, context-aware solutions and recommendations.

![!Screenshot](/Data-insights/Features/OpsPilot/images/Services.png)

### Service Page Features
- Progress bars for each service, indicating completeness of information.
- 100% completion when description, owner and knowledge are added.
- Ability to add non-FusionReactor services.
- Related knowledge sources visible below the service name when selected.
- Global progress indicator in top right (circular).
- Service filtering capability.

### Service Discovery

OpsPilot's service discovery process begins during initial customer provisioning, where the database is automatically populated with a list of the customer's services present at that time. However, if new services are added to the customer's infrastructure after this initial setup, OpsPilot won't automatically detect them and they will need to be manually added.

For services that don't send metrics to FusionReactor, such as uninstrumented applications or third-party services, customers can use the manual addition feature. This allows you to add and maintain data for services that OpsPilot can't automatically detect, ensuring that your service list in OpsPilot provides a comprehensive view of your entire ecosystem, including both instrumented and non-instrumented services.

!!! tip
    To maintain an accurate and up-to-date service list, it's recommended that customers regularly use the **Discover Services** function, especially after known infrastructure changes.


### Service Information



| Field | Description |
|-------|-------------|
| Description | Briefly explain what the service is and how it works. This field provides an overview of the service's purpose and functionality. |
| Tags | Add relevant tags for better organization and easier searching of services. |
| Service Metadata | Specify the individuals or teams responsible for the service. This information is useful for OpsPilot to suggest contacts for issue resolution. |
| Custom Metadata Categories | Add additional metadata fields as needed (e.g., programming language, deployment environment, version). These categories allow for more detailed service documentation. OpsPilot can use any metadata added. |


!!! tip
    Every service entry should always include, at minimum, a description and an owner. For 100% completion, knowledge would also be required. 





    