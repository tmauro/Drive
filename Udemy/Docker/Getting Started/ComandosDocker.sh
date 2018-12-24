#Comandos Docker
docker search centos
docker pull hello-world
docker images
docker run hello-world
docker run 4ab4c602aa5e
docker pull centos
docker pull centos:centos6
docker pull nginx
docker pull nginx:latest
#Ver que contiene la imagen en json
docker inspect nginx 

docker pull docker/whalesay
#Se puede realizar un inspect con la columna ID o con la columna NAMES
docker ps -a

#CONTAINER ID        IMAGE                COMMAND               CREATED             STATUS                     PORTS               NAMES
#a496f1421fa3        docker/whalesay      "cowsay Iam Docker"   3 minutes ago       Exited (0) 3 minutes ago                       stoic_bose
#6e8ab88614a2        docker/whalesay      "cowsay hello"        3 minutes ago       Exited (0) 3 minutes ago                       nifty_lalande
#9448606c82e0        docker/whalesay      "cowsay hello"        4 minutes ago       Exited (0) 4 minutes ago                       unruffled_dubinsky
docker inspect a496f1421fa3
docker inspect stoic_bose

#Docker Run

#####