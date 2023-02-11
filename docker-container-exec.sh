# container exec
# digunakan untuk execute code / program yang terdapat di dalam containnernya.
# misal didalam container tersebut terdapat aplikasi mysql, kita aka membuat database di sql tersebut
# syntax, docker container exec -i -t namaContainer/containerId script/program
# -i adalah argument untuk menjaga inputan tetap aktif
# -t adalah terminal
# script/program contoh bin/bash (ini adalah file execute di program aplikas yang biasanya basis linux, yang berisi perintah perintah)
# example
docker container exec -i -t contohredist /bin/bash