#! /bin/bash

# script que saca un "Hola " + parámetros + "!" por pantalla
# separando cada parámetro con una coma (,)
# que verifica que hayamos introducido al menos un parámetro
# y que muestra una ayuda en caso de error

function ayuda() {

# ¿cómo mostramos el siguiente texto en pantalla sin utilizar 'echo' en cada línea?
cat << ETIQUETA
SYNOPSIS
    $0 NOMBRE_1 [NOMBRE_2] ... [NOMBRE_N]

DESCRIPCION
    Muestra "Hola NOMBRE_1, NOMBRE_2, ... NOMBRE_N!" por pantalla.

CÓDIGOS DE RETORNO
    1 Si el número de parámetros es menor que 1
ETIQUETA
}

NUMERO_DE_PARAMETROS=$#
if [ $NUMERO_DE_PARAMETROS -le 0 ]; then
    echo "Hay que introducir al menos un parámetro."
    # ¿cómo llamamos a la función de ayuda?
    ayuda
    exit 1
fi

MENSAJE="Hola"
ES_PRIMERO=1
PRIMER_PARAMETRO=$1

while [ -n "$PRIMER_PARAMETRO" ]; do

    if [ $ES_PRIMERO -eq 1 ]; then
        MENSAJE="$MENSAJE $PRIMER_PARAMETRO"
        ES_PRIMERO=0
    else
        MENSAJE="$MENSAJE, $PRIMER_PARAMETRO"
    fi

    shift
    PRIMER_PARAMETRO=$1
done

echo $MENSAJE"!"

exit 0
