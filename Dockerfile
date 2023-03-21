FROM atlassian/confluence-server:8.1.1-jdk11
LABEL maintainer="vouu <sale@tinyactive.net>" version="8.2.0"
RUN mkdir -p /var/agent
ADD agent.jar /var/agent/atlassian-agent.jar
ENV JAVA_OPTS="-javaagent:/var/agent/atlassian-agent.jar ${JAVA_OPTS}"
EXPOSE 8090