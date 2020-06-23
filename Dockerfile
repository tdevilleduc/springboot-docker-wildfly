FROM jboss/wildfly:10.1.0.Final

RUN /opt/jboss/wildfly/bin/add-user.sh admin password --silent

ENV JAR_VERSION 0.0.1

ADD target/demo-$JAR_VERSION-SNAPSHOT.war /opt/jboss/wildfly/standalone/deployments/

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]