# menggunakan volume di container
# volume memiliki aturan dalam penulisan, yaitu dibungkus dalam petik 2
# parameter yang ada di mount:
# - type (volume)
# - source (namaVolume)
# - destination (tujuan, ingin ditaro di folder mana di dalam containernya)
# - readonly (artinya data yang dishare tersebut hanya bisa di baca, tidak bisa diubah/write oleh si container)
# syntax, --mount "type=volume,source=namaVolume,destination="

# example

docker volume create datamaria

docker container create --name mariavolume --publish 3306:3306 --mount "type=volume,source=datamaria,destination=/var/lib/mysql" --env MARIADB_USER=glh --env MARIADB_PASSWORD=glh --env MARIADB_ROOT_PASSWORD=root mariadb:latest


# backup volume
# 1. stop container yang ingin dibackup
# 2. buat container dengan 2 mount, volume yang ingin dibackup dan bind mount folder (tujuan) di HOST yang ingin disimpan
# 3. melakukan backupup dengan meng archive isi volume ke folder bind host
# 4. delete container yang dibuat untuk membackup

# example
