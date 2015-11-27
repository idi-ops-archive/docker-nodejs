FROM inclusivedesign/centos:7

RUN mkdir /etc/ansible/playbooks

WORKDIR /etc/ansible/playbooks

COPY ansible/* /etc/ansible/playbooks/

RUN ansible-galaxy install -r requirements.yml

RUN ansible-playbook build.yml --tags "install"

CMD ["/bin/bash"]
