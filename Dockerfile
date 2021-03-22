FROM centos

#Install Java
RUN yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel
ENV JAVA_HOME /etc/alternatives/jre

#Install Git, file, wget, sudo, python 2
RUN yum install -y git && yum install -y file && yum install -y wget && yum install -y sudo && yum install -y python2

#Workdir
WORKDIR /GCloudCli
COPY . /GCloudCli

#Install PSQL
RUN sudo yum install -y postgresql-server postgresql-contrib

#Update the Yum Repo to have the CLI
RUN wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-332.0.0-linux-x86_64.tar.gz

#Download Google Cloud SDK and untar for Java
RUN tar -xvf google-cloud-sdk-332.0.0-linux-x86_64.tar.gz && rm google-cloud-sdk-332.0.0-linux-x86_64.tar.gz

#Run installation script
RUN ./google-cloud-sdk/install.sh

#Attempt to Add Source Path
RUN source /GCloudCli/google-cloud-sdk/completion.bash.inc && source /GCloudCli/google-cloud-sdk/path.bash.inc

#Run Updates and Patches
RUN gcloud components update

#Install GCloud App Engine SDK for Java
RUN gcloud components install app-engine-java && gcloud components install kubectl

