#!bin/sh

printf "Area and perimeter of circle\n"

read -p "Enter radius of circle: " r
pi=3.14

area=`expr "$pi * $r * $r" | bc -l`

per=`expr "2 * $pi * $r" | bc -l`

echo "Area is $area"
echo "Perimeter is $per"
