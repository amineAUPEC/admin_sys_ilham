#!/bin/bash

path="/nfs/opt/bdr/3R-IN3/"
format_search_jpg=$(ls | grep -i ".jpg")
format_search_jpeg=$(ls | grep -i ".jpeg")

output_file="trouves"

cd $path
rm -f $output_file

for file_jpg in $format_search_jpg
do
    file $file_jpg --extension | grep -i -v 'JPEG'
 	
    if [ $? -eq 0 ]
        then 
            echo "$file_jpg is JPG"
    else 
            echo "$file_jpg is not JPG" >>  $output_file
    fi
done


for file_jpeg in $format_search_jpeg
do
    file $file_jpeg --extension | grep -i 'JPEG'
    if [ $? -eq 0 ]
        then 
            echo "$file_jpeg is JPEG"
    else 
            echo "$file_jpeg is not JPEG" >>  $output_file
    fi

done


echo "le fichier trouves est dans $path  : voici la commande cat $path/$output_file"