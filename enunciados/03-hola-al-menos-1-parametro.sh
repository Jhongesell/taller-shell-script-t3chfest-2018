#! /bin/bash

# script que saca un "Hola " + parámetros + "!" por pantalla
# y que verifica que hayamos introducido al menos un parámetro

# ¿cómo se coge el número de parámetros?
NUMERO_DE_PARAMETROS=$#

# ¿cómo se comparan números en bash?
if [ $NUMERO_DE_PARAMETROS -lt 1 ]; then
    echo "Hay que introducir al menos un parámetro."
    # ¿cómo paramos la ejecución indicando que ha habido un error?
    exit 1
fi

TODOS_LOS_PARAMETROS=$@
echo "Hola $TODOS_LOS_PARAMETROS!"
