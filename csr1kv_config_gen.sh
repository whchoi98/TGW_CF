#! /bin/bash
# ./csr1kv_config_gen.sh 1.1.1.1 2.2.2.2 configfile_name 
sed "s/tun1address/$1/g" csr1kv_config_template.txt > $3
sed -i "s/tun2address/$2/g" $3

