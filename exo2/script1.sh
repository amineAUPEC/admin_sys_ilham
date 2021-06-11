#!/bin/bash

path="/nfs/opt/bdr/3R-IN3/annuaires/"
format_search_jpg=$(ls | grep -i ".jpg")
format_search_jpeg=$(ls | grep -i ".jpeg")
input_file="./input_file.txt"
output_file="./output_file.txt"
output_file2="./output_file2.txt"
nom=$(cat $input_file | cut -f 2 -d ' ' | cut -f 1 -d '|' | tr 'A-Z' 'a-z' > $output_file)
nom_tronque=$(cut -c 1-8 $output_file)
cd $path

rm -rf 

echo "$nom_tronque" > $output_file2
sed -e 's/-//g' -i $output_file2