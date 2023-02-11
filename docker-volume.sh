# docker volume, di docker versi terbaru sudah tidak di rekomendasikan menggunakan docker mount
# docker volume mirip docker mount, bedanya kita bisa memanajemen si volume tersebut lewat docker (create/show/delete)
# perbedaan bind di simpan di data host/osHOST, volume di simpan di docker

# melihat daftar volume
docker volume ls

# membuat nama volume
# syntanx, docker volume create namaVolume
# example
docker volume create mongovolume

# menghapus volume
# syarat volume tersebut tidak digunakan oleh container
# syntax, docker volume rm namaVolume
# example
docker volume rm mongovolume