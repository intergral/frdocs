# Docker


<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/904067085?badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="Upgrading FusionReactor agent in Docker: a step-by-step guide"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>




### **Step 1**: Navigate to your Dockerfile <br>
Locate the Dockerfile used to create your Docker image.

!!! note
    Check the Dockerfile for the download paths to both the FusionReactor agent jar and the debug library. These paths should be specified within the Dockerfile.

### **Step 2**: Use download paths <br>
Ensure that you are using the download paths specified in the Dockerfile to obtain the FusionReactor agent jar and debug library. Do not download these files manually. Using the download paths ensures that when you rebuild your Docker image, it will pull directly from the FusionReactor website the latest version of each file.

### **Step 3**: Rebuild your Docker image <br>
After verifying and updating the download paths in your Dockerfile, rebuild your Docker image. This can typically be done using the docker build command.

### **Step 4**: Restart Docker containers <br>
Once the Docker image is rebuilt with the latest version of FusionReactor, restart your Docker containers to apply the changes.

### **Step 5**: Verify FusionReactor version <br>
After restarting the Docker containers, verify that FusionReactor has been upgraded to the latest version by navigating to the instance in a web browser. You should see the updated version of FusionReactor reflected in the web interface.

By following these steps, you can successfully upgrade FusionReactor in your Docker container while ensuring that you are using the latest version available from the FusionReactor website.

___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.