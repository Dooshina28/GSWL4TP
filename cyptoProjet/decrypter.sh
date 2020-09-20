#!/bin/bash
cd /home/dooshina/GSWL4TP/cryptoProjet/toDecrypt
array=($(echo *))
cd /home/dooshina/GSWL4TP/cryptoProjet/decrypted
In_decrypted="$(echo *)"

for fichier in ${array[*]}
do
        if [["$In_decrypted" == "$fichier.encrypted"]]
        then
                echo "present $fichier"
        else
                cd /home/dooshina/GSWL4TP/
                python3 decrypter.py "$fichier"
                mv ~/GSWL4TP/cryptoProjet/toDecrypt/"$fichier.encrypted" ~/GSWL4TP/decrypted/"$fichier.encrypted"
        fi
done






