#!bin/sh

printf "Simple calculator\n"

read -p "Enter a: " a
read -p "Enter b: " b

fn=1

while [ $fn -gt 0 ]
do
	echo "1. Addition"
	echo "2. Subtraction"
	echo "3. Multiply"
	echo "4. Divide"
	echo "5. Modulo"
	echo "0. Exit"
	read -p "Enter operation: " fn
	case $fn in
		1)
			printf "Sum is %f\n" `echo $a + $b | bc -l`
		;;
		2)
			printf "Difference is %f\n" `echo $a - $b | bc -l`
		;;
		3)
			printf "Product is %f\n" `echo $a \* $b | bc -l`
		;;
		4)
			printf "Division is %f\n" `echo $a \/ $b | bc -l`
		;;
		5)
			printf "Modulo is %s\n" `expr $a \% $b | bc -l`
		;;
		0)
			printf "Bye\n"
		;;
		*)
			echo "Enter valid function"
		;;
	esac
	
done
