#!/usr/bin/python3

from Crypto.PublicKey import RSA

#creation d'un couple de cles
key = RSA.generate(1024)

#chiffrage
public_key = key.publickey()
enc_data = public_key.encrypt(b"""bonjour c'est un message secret""", 32)

#dechiffrage
x = key.decrypt(enc_data)
x = x.decode('utf-8')

#afficher
print(x)

