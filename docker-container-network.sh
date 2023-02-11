# perlu diingat, hostname adalah nama masing masing setiap container

docker network create mongonetwork --driver bridge

docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=galih --env MONGO_INITDB_ROOT_PASSWORD=galih mongo:latest

docker container create --name mongoexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL=mongodb://galih:galih@mongodb:27017 mongo-express:latest

# start semua

# menghapus container dari docker network
# syntax, docker network disconnect namaNetwork namaContainer
# example
docker network disconnect mongonetwork mongodb

# menambahkan container ke network (container yang sudah terlanjur dibuat)
# syntax, docker network connect namaNetwork namaContainer
# example
docker network connect mongonetwork mongodb