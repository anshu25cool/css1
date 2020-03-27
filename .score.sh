pass=0
cat styles.css | tr -d '\040\011\012\015' > temp
if grep -o '\.container::-webkit-scrollbar-track{*[^}]*' temp | grep 'background-color' > /dev/null
then
	pass=$((pass+1))
fi
if grep -o '\.container::-webkit-scrollbar-track{*[^}]*' temp | grep 'border-radius' > /dev/null
then
	pass=$((pass+1))
fi
if grep -o '\.container::-webkit-scrollbar-track{*[^}]*' temp | grep 'box-shadow:inset' > /dev/null
then
	pass=$((pass+1))
fi



if grep -o '\.container::-webkit-scrollbar-thumb{*[^}]*' temp | grep 'background-color' > /dev/null
then
	pass=$((pass+1))
fi
if grep -o '\.container::-webkit-scrollbar-thumb{*[^}]*' temp | grep 'border-radius' > /dev/null
then
	pass=$((pass+1))
fi
if grep -o '\.container::-webkit-scrollbar-thumb{*[^}]*' temp | grep 'box-shadow:inset' > /dev/null
then
	pass=$((pass+1))
fi


if grep -o '\.container{*[^}]*' temp | grep 'overflow-y:scroll;' > /dev/null
then
	pass=$((pass+1))
fi
if grep -o '\.container{*[^}]*' temp | grep 'overflow-x:scroll;' > /dev/null
then
	pass=$((pass+1))
fi

rm temp

echo FS_SCORE:$((pass*100/8))%

