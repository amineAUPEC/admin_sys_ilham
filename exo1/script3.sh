#!/bin/bash

path="/nfs/opt/bdr/3R-IN3/"
file_to_copy=$(cat $path/$output_file)
format_search_jpeg=$(ls | grep -i ".jpeg")

output_file="trouves"


current_dir=$(pwd)
mkdir -p "$current_dir/mauvais"

cd $path


for copy_file in $file_to_copy
do
    cp $copy_file $current_dir/mauvais
 	
    if [ $? -eq 0 ]
        then 
            echo "$copy_file a été copié"
    else 
            echo "$file_jpg n'a pas été copié" 
    fi
done




echo "les fichiers copiés sont dans $current_dir/mauvais : ls $current_dir/mauvais"


