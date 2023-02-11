# fitur untuk menghapus image network volume container secara otomatis yang tidak terpakai

# menghapus semua container yang sudah stop
docker container prune

# menghapus semua image yang tidak digunakan
docker image prune

# menghapus semua network yang tidak digunakan oleh container
docker network prune

# menghapus semua volume yang tidak digunakan oleh container
docker volume prune

# menghapus semua komponent yang tidak digunakan
docker system prune