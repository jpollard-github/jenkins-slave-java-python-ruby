FROM jenkins/slave:3.27-1-alpine
MAINTAINER Jason Pollard
LABEL Description="Basically the same as jenkinsci/jnlp-slave, except adds python"

USER root
RUN apk add --update \
    python \
    ruby
USER jenkins
COPY jenkins-slave /usr/local/bin/jenkins-slave
ENTRYPOINT ["jenkins-slave"]
