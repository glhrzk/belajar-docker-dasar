# digunakan untuk melihat detail setiap komponent di docker

# inspect image
# syntax, docker inspect image namaImage:version
# example
docker inspect image mongo:latest


# inspect container
# syntax, docker container namaContainer
# example
docker inspect container contohnginx


# inspect volume
# syntax, docker inspect volume namaVolume
# example
docker inspect volume mongovolume


# inspect network
# syntax, docker inspect network namanNetwork
# example
docker inspect network mongonetwork