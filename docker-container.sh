# docker container adalah hasil dari installer image

# melihat docker container yang ada, aktif maupun tidak
# karena pada dasarnya ketika kita membuat docker container status awalnya tidak aktif
docker container ls -a
# melihat docker container yang berjalan saja
docker container ls

# membuat docker container, nama container harus unique
# syntax, docker container create --name namaContainer namaImage:version
# example
docker container create --name contohredist redis:latest

# menjalankan container
# syntax, docker container start containerId/namaContainer
# port yang ada adalah port di dalam containerId nya, alias terisolasi tidak akan bentrok
# example
docker container start contohredist

# menghentikan container
# syntax, docker container stop containerId/namaContainer
# example
docker container stop contohredist

# menghapus container
# status docker harus stop terlebih dahulu baru bisa dihapus
# syntax, docker container rm containerId/namaContainer
# example
docker container rm contohredist