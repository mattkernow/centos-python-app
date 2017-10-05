FROM centos:latest

WORKDIR /home

RUN  yum install -y https://centos7.iuscommunity.org/ius-release.rpm

RUN yum -y update

RUN yum install -y python36u \
                   python36u-libs \
                   python36u-devel \
                   python36u-pip

ADD . python-app

RUN python3.6 -m pip install -r python-app/requirements.txt

CMD ["python3.6", "python-app/app/app.py"]
