FROM centos:latest

RUN  yum install -y https://centos7.iuscommunity.org/ius-release.rpm

RUN yum -y update

RUN yum install -y python36u \
                   python36u-libs \
                   python36u-devel \
                   python36u-pip

ADD . /home/python-app

RUN python3.6 -m pip install -r /home/python-app/requirements.txt

CMD ["python3.6", "./home/python-app/app.py"]
