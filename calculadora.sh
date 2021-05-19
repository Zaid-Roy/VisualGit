#!/bin/bash
#Archivo .sh
menu=1
while [ $menu -gt 0 ]
do

	echo -e "Bienvendo a la calculadora:\n1.-Suma\n2.-Resta\n3.-Multiplicación\n4.-División\n0.-Salir";
	
	read menu
		case $menu in
		  1)
			echo -e "Suma:\nEscribe un número:";
			read num1;
			echo -e "Escribe el segundo número:";
			read num2;
			let suma=$num1+$num2;
			echo "$suma";
		  ;;
		  2)
			echo -e "Resta:\nEscribe un número:";
			read num1;
			echo -e "Escribe el segundo número:";
			read num2;
			let resta=$num1-$num2;
			echo "$resta";
		  ;;
		  3)
			echo -e "Multiplicación:\nEscribe un número:";
			read num1;
			echo -e "Escribe el segundo número:";
			read num2;
			let mult=$num1*$num2;
			echo "$mult";
		  ;;
		  4)
			echo -e "División:\nEscribe un número:";
			read num1;
			echo -e "Escribe el segundo número:";
			read num2;
				if [ $num2 -eq 0 ]; then
					echo "División sobre 0";
				else 
					let div=$num1/$num2;
					echo "$div";
				fi
		  ;;
		  0)
			echo "Saliendo del programa"
			exit 0;
		  ;;
		  *)
			echo "Elige una opción valida";
		  ;;
		esac

done