## Описание:
gitlab-runner запушен в ОС Centos 7. executor  shell
Требуется установит компоненты curl, mail.

В ОС пользователю gitlub-runner дать права sudo:
```
gitlab-runner ALL=(ALL) NOPASSWD:/usr/bin/docker 
```
