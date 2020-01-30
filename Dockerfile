FROM ubuntu:18.04
WORKDIR /root

RUN apt-get update && apt-get install -y apt-transport-https curl wget awscli gnupg gnupg1 gnupg2

RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list
RUN apt-get update && apt-get install -y kubectl=1.17.2-00

RUN curl -Lo kops https://github.com/kubernetes/kops/releases/download/v1.15.1/kops-linux-amd64
RUN chmod +x ./kops
RUN ln -sf ${pwd}/kops /usr/local/bin

RUN wget https://get.helm.sh/helm-v3.0.3-linux-amd64.tar.gz
RUN tar -zxvf helm-v3.0.3-linux-amd64.tar.gz
RUN mv ./linux-amd64/helm /usr/local/bin/helm
RUN helm repo add bitnami https://charts.bitnami.com/bitnami
RUN helm repo update

ENV TERM=xterm-256color

WORKDIR /root/workdir
