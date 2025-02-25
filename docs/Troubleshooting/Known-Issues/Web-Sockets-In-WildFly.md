#FusionReactor incompatibility when using Web Sockets in WildFly 13 and above

Due to a change in the Servlet engine in WildFly 13 and 14 FusionReactor is currently not able to monitor any application using Web Sockets.

If you are using FusionReactor with WildFly 13 you will see a stack trace similar to the one below in your WildFly log files and you will not be able to establish or interact with any Web Socket connections.

````
14:37:14,653 ERROR [io.undertow.request.io] (default task-3) UT005090: Unexpected failure: java.lang.AbstractMethodError14:37:14,653 
ERROR [io.undertow.request.io] (default task-3) UT005090: Unexpected failure: java.lang.AbstractMethodError at 
javax.servlet.http.HttpServletResponseWrapper.getHeaderNames(HttpServletResponseWrapper.java:321) at 
javax.servlet.http.HttpServletResponseWrapper.getHeaderNames(HttpServletResponseWrapper.java:321) at 
javax.servlet.http.HttpServletResponseWrapper.getHeaderNames(HttpServletResponseWrapper.java:321) at 
io.undertow.servlet.websockets.ServletWebSocketHttpExchange.getResponseHeaders(ServletWebSocketHttpExchange.java:110) at 
io.undertow.websockets.core.protocol.Handshake.initExtensions(Handshake.java:228) at... 
````
