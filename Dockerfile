FROM tomcat:8-slim
ARG SERVER_XML
ARG KEY_STORE
ARG WEBAPP
ADD ${KEY_STORE} /usr/local/tomcat/conf/keystore/tomcat.keystore
ADD ${SERVER_XML} /usr/local/tomcat/conf/server.xml
ADD ${WEBAPP} /usr/local/tomcat/webapps/cas