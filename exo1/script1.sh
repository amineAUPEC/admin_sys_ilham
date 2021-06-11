#!/bin/bash

path="/nfs/opt/bdr/3R-IN3/"
format_search_jpg=$(ls  $path | grep -i ".jpg")
format_search_jpeg=$(ls $path | grep -i ".jpeg")

# grep -i pour ignorer la distinction entre minuscule et majuscule
cd $path


for file_jpg in $format_search_jpg
do
    file $file_jpg --extension | grep -i -v 'JPEG' | cut -f 2 -d ' ' | grep -i 'JPG'
 	# --extension pour afficher
     #grep -v pour dire tout sauf ce motif ici JPEG
     # lecture de la sortie d'erreur exitcode avec $?
    if [ $? -eq 0 ]
        then 
            echo "$file_jpg is JPG"
    else 
            echo "$file_jpg is not JPG"
    fi
done


for file_jpeg in $format_search_jpeg
do
    file $file_jpeg --extension | grep -i 'JPEG' | cut -f 2 -d ' ' | grep -i 'JPEG'
    if [ $? -eq 0 ]
        then 
            echo "$file_jpeg is JPEG"
    else 
            echo "$file_jpeg is not JPEG"
    fi

done