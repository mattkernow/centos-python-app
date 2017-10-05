FROM centos:latest

RUN useradd -ms /bin/bash pythonuser

WORKDIR /home/pythonuser

RUN  yum install -y https://centos7.iuscommunity.org/ius-release.rpm

RUN yum -y update

RUN yum install -y python36u \
                   python36u-libs \
                   python36u-devel \
                   python36u-pip

ADD . python-app

RUN python3.6 -m pip install -r python-app/requirements.txt

WORKDIR /home/pythonuser/python-app

RUN ["chmod", "+x", "start_worker.sh"]

CMD ["./start_worker.sh"]
