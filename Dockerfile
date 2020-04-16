from jenkins/jenkins:lts

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN xargs /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt

USER root
RUN apt-get update && apt-get install -y maven

USER jenkins
