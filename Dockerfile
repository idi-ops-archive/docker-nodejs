FROM inclusivedesign/centos:7

RUN mkdir /opt/ansible

WORKDIR /opt/ansible

COPY ansible/requirements.yml requirements.yml

COPY ansible/playbook-docker-build.yml playbook-docker-build.yml

RUN ansible-galaxy install-r requirements.yml

RUN ansible-playbook playbook-docker-build.yml --tags "install"

CMD ["/bin/bash"]
