First, we define 3 variables.
1. message - The plaintext we want to decrypt or encrypt
2. key - The key we use for encryption or decryption
3. action - The function we want to use (encryption or decryption)
In case of lower-case letters given, we convert the plaintext and the key in uppercase format, and we define their length.

Next, we generate the extending key. We compare the length of the plaintext and the key. If the key length is less than the plaintext length, we extend it in order to have the same length with the plaintext.

Encrypt function takes as input the plaintext we want to encrypt and the key. Every character in both plaintext and key converts into ASCCII code and every character is assigning to Vigenère Table characters. Finally, the encrypted message is shown up.

In Decrypt function we use the ciphertext we want to decrypt and the key. Every character of both ciphertext and key is converted into ASCCII code and every character is assigning to Vigenère Table characters. Finally, the decrypted message (plaintext) is shown up.

Finally we check which action we want to trigger (encryption or decryption).
