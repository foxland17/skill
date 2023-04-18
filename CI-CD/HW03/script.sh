#!/bin/bash
#������� ������� ��� ������
rm -rf /tmp/docker
mkdir -p /tmp/docker

#�������� ������ ����� � ��������� ���� 
cp index.html /tmp/docker
cp Dockerfile /tmp/docker
cd /tmp/docker

#���� ������� ����� �� ���������� ����� ������� ��� 
#� �������� ������� ��������������
if sudo docker images | grep -q hw03
then 
 sudo docker rmi $1
fi
sudo docker build -t $1 .
