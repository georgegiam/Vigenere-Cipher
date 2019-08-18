# Vigenere-Cipher

In this script we get 3 inputs from the user.
1.	The function which want to use (encryption or decryption)
2.	The word which want to decrypt or encrypt 
3.	The key

In case of lower-case letters given by the user, the Upper-Case Converter convert those letters in upper case.

Key Extension Operation is a function that compares the length of user’s word and key. If the key length is smaller than the word the function extends it in order to have the same length with the word.

Encrypt function takes as an input the word that the user wants to encrypt and the key. Every character od the word and the key are converted into ASCCII code and every character is assigning to Vigenere Table characters. Finally, the encrypted message is shown up.

Decrypt function users gives the encrypted word and the key. Every character of the word and the key is converted into ASCCII code and every character is assigning to Vigenere Table characters. Finally, the decrypted message is shown up.

The only format user can give inputs to the program is
1.	Encrypt:  -e WORD_TO_ENCRYPT KEY ex. HELLO KEK
2.	Decrypt:  -d WORD_TO_DECRYPT KEY ex. RIVVS KEK










