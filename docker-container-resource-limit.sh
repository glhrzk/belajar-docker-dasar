# secara default ketika membuat container dia akan memakai semua resource yang ada, baik itu cpu, memory maupun storage
# di docker kita bisa melimit atau membatasi maksimal penggunaan resource tersebut ketika akan membuat container

# limitasi memory, bisa menggunakan byte (b), megabyte (m), gigabyte (g)
# syntax, --memory 100m

# limitasi cpu, bisa menggunakan koma alias titik (.)
# syntax, --cpus 0.5
# artinya menggunakan setengah core cpu

# example
docker container create --name smallnginx --publish 90:80 --memory 100m --cpus 0.5 nginx:latest