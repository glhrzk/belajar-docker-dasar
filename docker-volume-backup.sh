# tidak ada cara otomatis untuk membackup, kita perlu melakukan beberapa langkah

# backup volume
# 1. stop container yang ingin dibackup
# 2. buat container(sementara) baru dengan 2 mount, volume yang ingin dibackup dan bind mount folder (tujuan) di HOST yang ingin disimpan
# 3. melakukan backupup dengan meng archive isi volume ke folder bind host
# 4. stop dan delete container yang dibuat untuk membackup(sementara) tadi.

# example

docker create volume mariavolume
docker container stop mariavolume

docker container create --name nginxbackup --mount "type=bind,source=/home/backup-sql,destination=/backup" --mount "type=volume,source=datamaria,destination=/data" nginx:latest
# penjelasan destination pertama, yaitu akan membuat folder backup di dalam containernya. yang terhubung ke folder OS HOST
# penjelasa destination kedua, yaitu docker volume akan ditaro di folder /data, yang nantinya folder /data tersebut akan di archive

docker container start nginx
docker container exec -i -t nginxbackup /bin/bash
tar cvf /backup/backup.tar.gz /data

# bisa disingkat dengan satu baris, dengan docker run
# prasyarat: menggunakan image yang hanya satu kali execute dia berhenti, contoh ubuntu

docker container run --rm --name ubuntubackup --mount "type=bind,source=/home/backup-sql,destination=/backup" --mount "type=volume,source=datamaria,destination=/data" ubuntu:latest tar cvf /backup/backup-sql-volume.tar.gz /data