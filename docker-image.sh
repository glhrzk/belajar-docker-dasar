# docker image bisa dibilang adalah file installer
# docker image bisa digunakan oleh beberapa container asalkan namanya berbeda, alias bisa install banyak sekaligus

# untuk melihat image yang sudah di download/ada
docker image ls

# docker image pull digunakan untuk mengambil/download image dari repository
# syntax, docker image pull namaImage:version
# example
docker image pull redis:latest

# menghapus image
# syntax, docker image rm namaImage:version
# image tidak bisa dihapus jika masih ada container yang mereference ke image tersebut
# example
docker image rm helloworld:latest