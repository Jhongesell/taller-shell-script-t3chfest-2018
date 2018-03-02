# [Taller de 0 a 100 de Bash Shell Scripting y AWK](https://t3chfest.uc3m.es/2018/programa/taller-100-bash-shell-scripting-awk/)

## Notas del taller

- Chuletas shell-script.pdf: aparecen los comandos más útiles (también lo miramos en el taller)

- Carpeta soluciones para el futuro: se puede comparar la solución con el enunciado para cada fichero y ver qué se hizo (utilizar https://github.com/asanzdiego/taller-shell-script-t3chfest-2018 con enunciados sin hacer).

- Carpeta enunciados para el taller (copia clonada en local para ejecutar los scripts): /Users/cristinafernandez/Others/taller-shell-script-t3chfest-2018/enunciados

### Ejercicio 1

```
chmod +x 01-hola-mundo.sh

./01-hola-mundo.sh
```
### Ejercicio 2

```
./02-hola-parametros.sh a todos
```

- if y corchete con espacios
```
if [ $NUMERO_DE_PARAMETROS ]
```

### Ejercicio 3

- exit 0 si llega al final y ha sido correcta

```
./03-hola-al-menos-1-parametro.sh uno
```

### Ejercicio 4

- shift para pasar de parámetro

- -n no es vacío

```
./04-hola-parametros-separados.sh prueba 2
```

### Ejercicio 5

- $0 es el nombre del script

- Como si fuera un archivo texto se pasa a cat

```
./05-hola-con-ayuda.sh
```

### Ejercicio 6

- Ejemplo de filtros: ls /dev | grep tty

- egrep para expresiones regulares: ls /dev | egrep ^tt.

- who cuando salen muchos: con filtro: who | egrep ^cristinafernandez

- Comillas inclinadas para ejecutar un comando y guardar a una variable

- Exit 2 para hacer comprobación de errores

```
./06-hola-usuario.sh cristinafernandez
```

### Ejercicio 7

./07-usuario-conectado cristinafernandez

### Ejercicio 9

```
./09-hola-usuario.sh cristinafernandez
```

### Ejercicio 8

- Script como comando

- Opción 1: Enlace simbólico al script (duda de si es así, comprobar)
sudo ln -s /Users/cristinafernandez/Others/taller-shell-script-t3chfest-2018/enunciados /usr/bin/

- Se podría ejecutar como comando el ejercicio 9: 

```
ESTA_CONECTADO=`07-usuario-conectado $PRIMER_PARAMETRO`
```

- Opción 2: Añadir al PATH la ruta a carpeta nuestra en .bashrc

### Ejercicio 10

- awk es una hoja de cálculo en la consola

- Begin se ejecuta una vez al principio, end 1 vez al final y el resto una vez por línea

- notas.csv con las notas

```
awk -f 11-notas.awk 10-notas.csv
```

- También:
```
./11-notas.sh
```

- Devuelve:

```
+---------------------------+-----+------+
| NOMBRE      EX1  EX2  EX3 | MED | APTO |
+---------------------------+-----+------+
| Pepito      3.1  4.4  5.7 | 1 |  NO  |
| Fulanito    4.2  6.5  8.8 | 1,33333 |  NO  |
| Menganito   5.3  5.6  5.0 | 1,66667 |  NO  |
+---------------------------+-----+------+
| MEDIAS      1,66667  5  6 | 4,22222 |     |
+---------------------------+-----+------+
```

- Imprime línea entera con "$0"

- No hay que inicializar, empieza en 0

- También se podría hacer ls de cada línea y un pipe para ejecutar awk:
```
echo 100 | awk '{print $1 * 1}'
```

### Ejercicio 12

- Servicio / demonio: para ejecutar cada 2 segundos siempre

- -a es como &&

- mensaje error si variable no es un número con bash

- Devuelve 100:
```
echo 100 | awk '{print $1 * 1}'
```

- Devuelve 0:
```
echo a | awk '{print $1 * 1}'
```

```
./12-alerta a
```

- Se sigue ejecutando y se guarda el resultado en log
```
tail -f alerta.lgo
```
- Ctl+Z está parado pero se ejecuta en segundo plano. Se mira en jobs. Pasar a primer plano con fg.
- Con & se tiene control sobre la consola y está en segundo plano ejecutándose. 

```
./12-alerta 2 &
```
