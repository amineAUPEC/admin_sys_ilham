#!/bin/bash

# path="/nfs/opt/bdr/3R-IN3/annuaires/"
format_search_jpg=$(ls | grep -i ".jpg")
format_search_jpeg=$(ls | grep -i ".jpeg")
input_file="./input_file.txt"
output_file="./output_file.txt"
nom=$(cat $input_file | cut -f 2 -d ' ' | tr 'A-Z' 'a-z')
nom_tronque=$(cut -c 1-8 $input_file)
# cd $path

rm -rf 

for noms in $nom_tronque
do
    echo "$nom_tronque"
    echo "$nom_tronque" >> $output_file
 	
done
