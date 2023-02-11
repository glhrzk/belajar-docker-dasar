# sama seperti backup, di restore pun tidak ada cara otomatis.

# restore volume
# 1. buat volume baru (destination file backup)
# 2. stop container yang ingin di restore
# 3. buat container(sementara) baru dengan 2 mount, volume yang ingin dibackup dan bind mount folder (tujuan) di HOST yang ingin disimpan
# 4. melakukan backupup dengan meng archive isi volume ke folder bind host
# 5. stop dan delete container yang dibuat untuk membackup(sementara) tadi.


# bisa disingkat dengan satu baris, dengan docker run
# prasyarat: menggunakan image yang hanya satu kali execute dia berhenti, contoh ubuntu

docker volume create restoremaria

docker container run --rm --name ubunturestore --mount "type=bind,source=/home/backup-sql,destination=/backup" --mount "type=volume,source=restoremaria,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup-sql-volume.tar.gz --strip 1"

# test hasil restore
docker container create --name mariarestore --mount "type=volume,source=restoremaria,destination=/var/lib/mysql" --publish 3306:3306 mariadb:latest