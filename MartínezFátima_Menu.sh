#Primero limpiamos la pantalla
clear

#Aqui configuramos de que el número 6 es para salir del
#menú bash
salir=6
# Creamos el diseño del menú bash
echo "**********************************************"
echo "- - - - - - - - - - - - - - - - - - - - - - - -"
echo "                 MENÚ BASH                     "
echo "- - - - - - - - - - - - - - - - - - - - - - - -"
echo "**********************************************"
echo "----------------------------------------------"
echo "             1.Mayor o menor de edad     "
echo "             2.Ficheros vacíos "
echo "             3.Números iguales  "
echo "             4.Archivos y ficheros"
echo "             5.Números positivos y negativos"
echo "             6.Salir             "
echo "---------------------------------------------"
echo "*********************************************"
echo "- - - - - Bienvenid@ al menú bash - - - - - -"
echo "- - - - - Le damos la bienvenida - - - - - - -"

#Aqui nos dice que selecionemos una opción del menú bash 
read -p "Por favor selecione una opción: " opcion
echo "- - - Ha escogido la opción $opcion - - - -"

#Aqui se escribe que mientras la persona no seleccione la opción 6 o salir,
#no salga del menú bash
while (($opcion != 6))
do 
    #Aqui configuramos el valor de las opciones,es decir,los scripts de cada opción

    #Script Opción 1: Mayor o menor de edad 
    function opcion1(){
        read -p "Introduce tu edad: " idade
        if [ $idade -ge 18 ]
        then
            echo "Eres mayor de edad"
        else
            echo "Eres menor de edad"
        fi    
    }

    #Script Opción 2: Ficheros vacíos
    function opcion2(){
        read -p "Introduce o nome dun fichero: " f
        if [ -e $f ]
        then
            echo "El fichero existe"
            if [ -s $f ]
            then
                echo "No está vacío"
            else
                echo "Está vacío"
            fi
        else
            echo "Ese fichero no existe"
        fi
    }

    #Script Opción 3: Números iguales
    function opcion3(){
        read -p "Introduce un número: " num1
        read -p "Introduce otro número: " num2
        if [ $num1 == $num2 ]
        then
            echo "$num1 y $num2 son iguales"
        elif [ $num1 \> $num2 ]
        then
            echo "$num1 es mayor que $num2"
        elif [ $num1 \< $num2 ]
        then
            echo "$num1 es menor que $num2"
        fi
    }

    #Script Opción 4: Archivos y ficheros
    function opcion4(){
        read -p "Introduce la ruta: " ruta
        for file in $ruta
    do
        if [ -d $file ]
        then
            echo $file es un directorio
        else
            echo $file es un archivo
        fi
    done
    }

    #Script Opción 5: Números positivos y negativos
    function opcion5(){
        read -p "Introduce un número: " numero
        if [ $numero -gt 0 ]
        then
            echo "El número $numero es positivo"
        else
            echo "El número $numero es negativo"
        fi
    }

    #Esta opción es para salir del menú cuando seleccione la Opción 6: Salir
    function opcion6(){
        echo "- - - - Gracias por utilizar el menú de bash - - - -"
        echo "- - - - - - - Que tenga un buen día- - - - - - - - -"
        echo "- - - - - - - - - -Hasta pronto- - - - - - - - - - -"
        echo "                       ^ ^                          "
        echo "                        v                           "
    }

    #Aqui se configura en caso de qué opción se elige al introducir
    case $opcion in
        1)
        opcion1
        ;;
        2)
        opcion2
        ;;
        3)
        opcion3
        ;;
        4)
        opcion4
        ;;
        5)
        opcion5
        ;;
        6)
        opcion6
        ;;
    esac

    #Aqui se pregunta si desea salir del menú bash
    read -p "Desea salir?" opcion

    #Aqui es en caso de que la persona no seleccione la opción de salir 
    # y continue con el menú bash
    if (($opcion != 6 ))
    then
        read -p "Por favor selecione una opción: " opcion
        echo "- - - Ha escogido la opción $opcion - - - -"
    fi

    #Aqui es en caso de que la persona seleccione la opción de salir
    # para salir del menú bash
    if (($opcion == 6 ))
    then
        echo "- - - - Gracias por utilizar el menú de bash - - - -"
        echo "- - - - - - - Que tenga un buen día- - - - - - - - -"
        echo "- - - - - - - - - -Hasta pronto- - - - - - - - - - -"
        echo "                       ^ ^                          "
        echo "                        v                           "
    fi
done