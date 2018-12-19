#Instalacion de Docker

#Preparacion de Sistema
sudo yum install net-tools -y

#Instalacion de FTP
sudo bash
yum install vsftpd ftp -y

vi /etc/vsftpd/vsftpd.conf
systemctl enable vsftpd
systemctl start vsftpd
firewall-cmd --permanent --add-port=21/tcp
firewall-cmd --permanent --add-service=ftp
firewall-cmd --reload
#setsebool -P ftp_home_dir on

#Habilitar ROOT FTP
/etc/vsftpd/ftpusers
/etc/vsftpd/user_list #(userlist_enable=YES)
systemctl restart vsftpd
setenforce permissive #Es lo mismo que: setenforce 0. Para regresar: setenforce 1

#DOCKER
cd /etc/yum.repos.d/

cat > docker.repo << eof_docker
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/7/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
eof_docker

yum update -y

yum install -y docker-engine
systemctl enable docker
systemctl start docker
docker --version
docker images

#Docker se ejecuta con grupo DOCKER
cd /var/run
ls -al dock* #srw-rw----. 1 root docker   0 Dec  2 01:28 docker.sock

#agregar usuario al grupo DOCKER
cat /etc/group | grep docker
usermod -a -G docker mtorres
cat /etc/group | grep docker

#Session 2
#Busqueda en Docker Hub
docker search centos
