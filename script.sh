#!/bin/bash
message_f=$2
key_f=$3
action=$1

#CONVERTING THE MESSAGE AND THE KEY TO UPPER CASE STRINGS
message=${message_f^^}
key=${key_f^^}

mes_length=${#message}
key_length=${#key}
  
newkey=''
encrypted=''
decrypted=''
j=0

#GENERATING THE EXTENDED KEY
for((i=0; i<$mes_length; ++i))
do
    if [[ $j -eq $key_length ]]
    then
        j=0
    fi
    a=${key:$j:1}
    newkey=$newkey$a
    ((++j))
done

#ENCRYPTION
encrypt(){
  echo 'Message to encrypt: '$message
  echo 'Key: '$key
  for((i=0; i<$mes_length; ++i))
  do
    mes=${message:$i:1}
    ke=${newkey:$i:1}
    text_as=`printf "%d" "'${mes:index:1}'"`
    key_as=`printf "%d" "'${ke:index:1}'"`
    ascii_mes=`expr $(expr $text_as + $key_as) % 26 + 65`
    encrypted=$encrypted`printf "\x$(printf %x $ascii_mes)"`
  done

  echo 'Encrypted Message: '$encrypted
}

#DECRIPTION
decrypt(){
  echo 'Message to decrypt: '$message
  echo 'Key: '$key

  for((i=0; i<$mes_length; ++i))
  do
      e_mes=${message:$i:1}
      e_ke=${newkey:$i:1}
      mes_as_en=`printf "%d" "'${e_mes:index:1}'"`
      key_as_en=`printf "%d" "'${e_ke:index:1}'"`
      ascii_mes_de=`expr $(expr $mes_as_en - $key_as_en + 26) % 26 + 65`
      decrypted=$decrypted`printf "\x$(printf %x $ascii_mes_de)"`
  done 

  echo 'Decrypted Message: '$decrypted
}

if [[ $action == "-e" ]]
then
  encrypt "message" "key"
fi

if [[ $action == "-d" ]]
then
  decrypt "encrypted" "key"
fi

if [[ $action != "-e" ]] && [[ $action != "-d" ]]
then
  echo "Opperation $1 doesn't exist."
fi
