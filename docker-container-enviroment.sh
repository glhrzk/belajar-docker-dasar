# docker container enviroment variable
# digunakan agar aplikasi bisa dinamis(tidak di hardcode) ketika ingin dijalankan atau dibuat
# anggap saja ini adalah function yang menerima parameter
# kita bisa memasukan key enviroment variable ketika membuat container dari imagenya
# keyword yang digunakan adalah, --ENV atau -e
# example
docker container create --name contohsql --publish 95:3306 --env MARIADB_USER=glh --env MARIADB_PASSWORD=glh --env MARIADB_ROOT_PASSWORD=root mariadb:latest