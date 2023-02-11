# karena sifat dari container adalah terisolasi kita tidak bisa melakukan komunikasi antar container
# docket network digunakan untuk mengatasi hal tersebut
# jika beberapa container berada dalam satu network maka container tersebut bisa saling berkomunikasi

# DRIVER NETWORK, memiliki konsep seperti VMWare
# - bridge, driver network secara virtual (container yang terkoneksi dengan bridge yang sama akan saling terhubung).
# - host, driver network yang digunakan untuk network yang sama dengan os HOST nya, hanya bisa dilakukan di docker linux
# - none, driver network yang tidak bisa saling berkomunikasi 

# sifat network di docker managble (create/delete/show)

# melihat/show network
docker network ls

# membuat network
# syntax, docker network create --driver namaDriver namaNetwork
# example
docker network create --driver bridge contohnetwork

# menghapus network
# prasyarat, network tidak digunakan oleh container
# syntax, docker network rm namaNetwork
# example
docker network rm contohnetwork