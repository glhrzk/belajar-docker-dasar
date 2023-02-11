# mount merupakan kemampuan mounting (sharing)
# biasanya digunakan ketika ingin menyimpan data/folder diluar container, dan ingin share data/folder tersebut ke container
# mount memiliki aturan dalam penulisan, yaitu dibungkus dalam petik 2
# parameter yang ada di mount:
# - type (file/folder/ (volume))
# - source (sumber folder/data yang ada di system host)
# - destination (tujuan, ingin ditaro di folder mana di dalam containernya)
# - readonly (artinya data yang dishare tersebut hanya bisa di baca, tidak bisa diubah/write oleh si container)
# syntax, --mount "type=bind,source=,destination="

# example
docker container create --name mariadata --publish 95:3306 --mount "type=bind,source=/home/maria-data,destination=/var/lib/mysql" --env MARIADB_USER=glh --env MARIADB_PASSWORD=glh --env MARIADB_ROOT_PASSWORD=root mariadb:latest