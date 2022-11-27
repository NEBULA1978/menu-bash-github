#!/bin/bash
while :; do
    #Menu
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Mostrar directorio actual"
    echo "2. Mostrar calendario"
    echo "3. Mostrar hora de hoy"
    echo "5. Saber utulizar herramientas de gestion de proyectos como gira,asana o trelo "
    echo "6. Inicializamos GIT con git init"
    echo "7. Añadimos el archivo index.html con git add index.html"
    echo "8. Ver el estado con git status"
    echo "9. Añadimos commit"
    echo "10. Para ver loscomits con git log"
    echo "11. Añadimos el archivo index.html con git add index.html"
    echo "12. Añadimos commit"
    echo "13. Para volver al commit 1º"
    echo "14. Para volver a la  rama master"
    echo "15. Para volver al estado inicial sin commits"
    echo "16. Para volver al estado inicial sin commits con --hard"
    echo "17. Para ver commits en una sola linea"
    echo "18. Para recuperar archivo index.html borrado"
    echo "4. Salir"
    echo ""
    #Escoger menu
    echo -n "Escoger opcion: "
    read opcion
    #Seleccion de menu
    case $opcion in
    1)
        echo "Mostrando directorio"
        ls
        read foo
        ;;
    2)
        echo "Mostrando calendario"
        cal
        read foo
        ;;
    3)
        echo "Mostrando datos"
        date
        read foo
        ;;
    5)
        echo "Saber utulizar herramientas de gestion de proyectos como gira,asana o trelo"
        read foo
        ;;
    6)
        echo "Inicializamos GIT con git init"
        git init
        read foo
        ;;
    7)
        echo "Añadimos el archivo index.html con git add index.html"
        git add index.html
        read foo
        ;;
    8)
        echo "Ver el estado con git status"
        git status
        read foo
        ;;
    9)
        echo "Añadimos commit"
        git commit -m "Añadimos commit de index.htlm"
        read foo
        ;;
    10)
        echo "Para ver loscomits con git log"
        git log
        read foo
        ;;
    11)
        echo "Añadimos el archivo index.html con git add index.html"
        git add index.html
        read foo
        ;;
    12)
        echo "Añadimos commit segundo a index.html"
        git commit -m "Añadimos div al contenido del blog"
        read foo
        ;;
    13)
        echo "Para volver al commit 1º"
        # Con 5 o 6 primero vale tambien
        git checkout  67d039d5794448ab4f553fb48727e9e016436e00
        read foo
        ;;
    14)
        echo "Para volver a la  rama master"
        # Con 5 o 6 primero vale tambien
        git checkout  master
        read foo
        ;;
    15)
        echo "Para volver al estado inicial sin commits"
        # Con 5 o 6 primero vale tambien
        # Eliminamos el commits anterior y
        # Luego añadimos el commit y tenemos los dos como antes
        git reset 29d71693aaca
        read foo
        ;;
    16)
        echo "Para volver al estado inicial sin commits con --hard"
        # Con 5 o 6 primero vale tambien
        # Eliminamos el codigo del commits anterior y
        # volvemos al estado inicial
        git reset --hard 29d71693aaca
# RESULTADO POR CONSOLA
#next@nebula:~/Música/menu bash github$ git log
# commit 29d71693aaca4dd3f5f42a96bee3bbf13927b012 (HEAD -> master)
# Author: NEBULA1978 <rpascualey@gmail.com>
# Date:   Sun Nov 27 19:20:53 2022 +0100

    Añadimos commit de index.htlm
next@nebula:~/Música/menu bash github$ 
        read foo
        ;;
    
    
    17)
        echo "Para ver commits en una sola linea"
        # Eliminamos el commits anterior y
        # Luego añadimos el commit y tenemos los dos como antes
        git log --oneline
        read foo
        ;;
    18)
        echo "Para recuperar archivo index.html borrado"
        #En caso de haber borrado archivo index.htm con rm
        # Recuperamos con :
        git restore index.html
        read foo
        ;;
# ARCHIVO DE GIT
# next@nebula:~/Música/menu bash github$ ls .git
#     branches        config       HEAD   index  logs     ORIG_HEAD
#     COMMIT_EDITMSG  description  hooks  info   objects  refs
#     next@nebula:~/Música/menu bash github$ 

    4) exit 0 ;;
    #Alerta
    *)
        echo "Opcion invalida..."
        sleep 1
        ;;
    esac
done
