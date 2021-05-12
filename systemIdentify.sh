#! /bin/bash/

read IP;

var=$(ping -c1 -w1 ${IP} | cut -d' ' -f6 | grep -i 'ttl' | cut -c 5-7)

#echo $var

	if [[ $var -lt 64 ]]
		then
			echo "Linux"

	elif [[ $var -gt 65 && $var -lt 128 ]]
		then 
			echo "Windows"
	else
		echo "Desconocido"

fi
