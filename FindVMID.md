```
#!/bin/bash

MAC=$1
IsFound=0

my_array=( $(qm list | awk 'NR==2,NR==null{print $1}') )

for i in ${my_array[@]}

do
isInFile=$(qm config $i | grep -c "$MAC")
if [ $? -eq 0 ]; then
        echo "Vmid Is: "$i
        IsFound=1
fi

done

if [ $IsFound -eq 0 ]; then
echo "No MacAddress Founded!!!"
fi
```
