

# How CVEs are addressed in the FusionReactor Agent

At FusionReactor, addressing security vulnerabilities (CVEs) is an ongoing effort and a commitment to our customers. FusionReactor's role as application monitoring software sets it apart from a traditional application. To function effectively, it relies on various libraries, some of which might be older but are crucial to supporting the legacy versions of software that we monitor.

One of the key features of FusionReactor is its use of Class Loader Isolation for libraries that it includes. This means that many vulnerability issues are isolated, as our approach to protection lowers the risks.

Here's how we handle updates and vulnerabilities:

1. **Understanding the complexity**: Updates take time due to the multifaceted nature of our project. Upgrading libraries is not only a matter of replacing old with new; we must test across all supported platforms and carefully check for regressions.

2. **Legacy support**: FusionReactor currently supports over 10 years of platform versions. We believe in making every customer's environment fully observable, which sometimes necessitates using older libraries.

3. **If regressions occur**: We must evaluate alternate libraries or even consider dropping support for certain older platforms that are dependent on those older libraries.

4. **Qualifying risks**: In line with SOC2 compliance, some libraries might not be updated but will need to be qualified as a justified risk. 

5. **Balancing act**: We strive to maintain support for older platforms to ensure all our customers can benefit from FusionReactor. This effort requires us to strike a delicate balance between upholding security measures and supporting older environments, vital to many users.

Our approach towards addressing CVEs is rooted in our understanding of the unique needs of our product and customers. By maintaining a focus on security without compromising support for older platforms, we are working diligently to ensure that FusionReactor remains a reliable and robust tool for application monitoring across a broad spectrum of environments.

___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist. 
