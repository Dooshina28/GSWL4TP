#!/bin/bash
cd /home/dooshina/GSWL4TP/cryptoProjet/toCrypt
array=($(echo *))
cd /home/dooshina/GSWL4TP/cryptoProjet/crypted
In_crypted="$(echo *)"

for fichier in ${array[*]}
do
        if [["$In_crypted" == "$fichier.encrypted"]]
        then
                echo "present $fichier"
        else
                cd /home/dooshina/GSWL4TP/
                python3 crypter.py "$fichier"
                mv ~/GSWL4TP/cryptoProjet/toCrypt/"$fichier.encrypted" ~/GSWL4TP/crypted/"$fichier.encrypted"
        fi
done











