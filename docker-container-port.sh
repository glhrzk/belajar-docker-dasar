# container port
# port di container sifatnya terisolasi, tidak akan bentrok walaupun portnya sama. jadi kita tidak bisa langsung membuka/mengakses port yang ada di docker secara langsung

# port-forwarding
# digunakan untuk mengekspose port docker container ke system hostnya
# syntax, docker container create --name namaContainer --publish portHost:portContainer namaImage:version
# --publish bisa disingkat dengan -p, kita juga bisa membuat port publih lebih dari satu
# example
docker container create --name contohnginx --publish 91:80 nginx:latest