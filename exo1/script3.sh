#!/bin/bash

path="/nfs/opt/bdr/3R-IN3/"
output_file="trouves"
file_to_copy=$(cat $path/$output_file)



current_dir=$(pwd)
mkdir -p "$current_dir/mauvais"

cd $path


# for copy_file in $file_to_copy
# do
#     cp $copy_file $current_dir/mauvais
 	
#     if [ $? -eq 0 ]
#         then 
#             echo "$copy_file a été copié"
#     else 
#             echo "$copy_file n'a pas été copié" 
#     fi
# done



while IFS= read -r copy_file; do
        echo "Text read from file: $copy_file"

        cp $copy_file $current_dir/mauvais
 	
        if [ $? -eq 0 ]
            then 
                echo "$copy_file a été copié"
        else 
                echo "$copy_file n'a pas été copié" 
        fi
done < $path/$output_file



echo "les fichiers copiés sont dans $current_dir/mauvais : ls $current_dir/mauvais"


