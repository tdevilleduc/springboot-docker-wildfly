FROM jboss/wildfly:20.0.0.Final

RUN /opt/jboss/wildfly/bin/add-user.sh admin password --silent

ARG JAR_VERSION

ADD target/demo-${JAR_VERSION}-SNAPSHOT.war /opt/jboss/wildfly/standalone/deployments/demo.war

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
