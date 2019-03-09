 #!/bin/bash


echo "Welcome!"
echo "Just Testing"

echo "Encrypt or Decrypt a file"
echo "Select:"

choice="Encrypt Decrypt"

select option in $choice; do
        if [ $REPLY = 1 ];
then
        echo "Encrypt"
        echo "FILENAME:"
        read file;
        gpg -c $file
        echo "Encrypted"
else
        echo "Decrypt"
        echo "FILENAME:"
        read file2;
        gpg -d $file2
        echo "Decrypted"
fi

echo "Cya"

done
