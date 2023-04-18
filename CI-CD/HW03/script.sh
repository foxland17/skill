#!/bin/bash
#Очишаем каталог для работы
rm -rf /tmp/docker
mkdir -p /tmp/docker

#Копируем нужные файлы и переходим туда 
cp index.html /tmp/docker
cp Dockerfile /tmp/docker
cd /tmp/docker

#Если имеется образ от предедуших работ удаляем его 
#и создадим текушим конфигурациией
if sudo docker images | grep -q hw03
then 
 sudo docker rmi $1
fi
sudo docker build -t $1 .
