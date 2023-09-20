FROM tomcat:9.0.80
RUN mv webapps webapps2
RUN mv webapps.dist/ webapps

COPY target/myweb*.war /usr/local/tomcat/webapps/myweb.war

COPY context.xml /usr/local/tomcat/webapps/host-manager/META-INF/context.xml
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml


# RUN sudo yum install java-1.8.0-openjdk
# RUN sudo su -

# RUN cd /
# RUN cd /opt

# RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.55/bin/apache-tomcat-9.0.55.tar.gz
# RUN tar -zvxf apache-tomcat-9.0.55.tar.gz
# RUN cd apache-tomcat-9.0.55

# RUN cd bin

# RUN chmod +x startup.sh
# RUN chmod +x shutdown.sh
# RUN ln -s /opt/apache-tomcat-9.0.55/bin/startup.sh /usr/local/bin/tomcatup
# RUN ln -s /opt/apache-tomcat-9.0.55/bin/shutdown.sh /usr/local/bin/tomcatdown
# RUN tomcatup