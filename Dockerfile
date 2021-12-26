FROM tomcat:10.0.0-jdk11-adoptopenjdk-hotspot

COPY config/setenv.sh /usr/local/tomcat/bin

COPY config/tomcat-users.xml /usr/local/tomcat/conf

COPY /Manager/context.xml /usr/local/tomcat/webapps.dist/manager/META-INF

ENV JPDA_ADDRESS="*:8000"
 
ENV JPDA_TRANSPORT="dt_socket"

EXPOSE 8000 8080 587 25

COPY /scripts/init.sh /
RUN chmod +x /init.sh

CMD ["/init.sh"]