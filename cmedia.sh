#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Error: Debe proporcionar el nombre de una ciudad como argumento."
    exit 1
fi

ciudad = $1
sum = 0
cont = 0

while read linea; do
    if [[ $linea == $ciudad* ]]; then
        suma = $(($sum + $(echo $linea | awk '{print $4}'))
        contador = $(($cont + 1))
    fi
done < Consumos.txt

promedio = $(echo "scale = 2; $sum / $cont" | bc)
echo "La media de consumo en $ciudad es: $promedio"