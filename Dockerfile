FROM jenkinsci/blueocean:latest
USER jenkins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
COPY seedJob.xml /usr/share/jenkins/ref/jobs/seed-job/config.xml
COPY createJobs.groovy /var/jenkins_home/jobs/seed-job/workspace/createJobs.groovy
 
USER root
