#!/bin/bash

motdepasse$(cat $1 | cut -f 1 -d ' ')
user$(cat $1 | cut -f 2 -d ' ')
database_pass="./databasepass.txt"

# boucle infinie
while true
do

    for pass in $motdepasse
    do
        login <<< $pass
        # test des mot de passes avec le denotes bash string
        
        if [ $? -eq 0 ]
            then 
                echo "mot de pase valide"
                echo "OK"
        else 
                echo "mot de passe invalide" 
        fi
    done
done

 	