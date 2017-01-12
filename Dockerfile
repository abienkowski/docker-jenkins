FROM jenkins:2.32.1-alpine
# -- add sudo package
USER root
RUN apk add --no-cache sudo docker && \
    echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
# -- back to jenkins user
USER jenkins
