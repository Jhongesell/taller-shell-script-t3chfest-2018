BEGIN {
    print "+---------------------------+-----+------+"
    print "| NOMBRE      EX1  EX2  EX3 | MED | APTO |"
    print "+---------------------------+-----+------+"
}
{
    # ¿cómo sumamos la columnas 2, 3 y 4 y calculamos la media?
    suma2=$2
    suma3+=$3
    suma4+=$4
    mediaFila=($2+S3+S4)/3
    apto="NO"
    if ( mediaFila >= 5 ) {
        apto="SI"
        aptos++
    }
    print "| "$0" | "mediaFila" |  "apto"  |"
}
END {
    # ¿cómo calaulamos las medias de la columnas 2, 3 y 4 y la media total?
    media2=suma2/3
    media3=suma3/3
    media4=suma4/3
    media=(media2+media3+media4)/3
    print "+---------------------------+-----+------+"
    print "| MEDIAS      "media2"  "media3"  "media4" | "media" |   "aptos"  |"
    print "+---------------------------+-----+------+"
}
