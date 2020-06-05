# Docker Installation on master
#$ sudo yum install docker-ce
#sudoyum install -y docker
#sudo cp docker-runc-current /usr/bin/docker-runc
curl -sSL https://get.docker.com/ | sh
mkdir -p /etc/systemd/system/docker.service.d/
echo -e "[Service] \n
ExecStart=\n
ExecStart=/usr/bin/dockerd -H fd:// -H 0.0.0.0:2375
" >> /etc/systemd/system/docker.service.d/override.conf
systemctl daemon-reload && systemctl enable docker && systemctl start docker

