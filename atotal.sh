#!/bin/bash
while true; do
  echo "Introduzca una ciudad entre las siguientes opciones valencia, barcelona o madrid (escribela en minusculas): "
  read ciudad

  consumo_total = 0

  while IFS = ' ' read -r ciudad_actual mes_actual anyo_actual consumo_actual; do
    if [[ $ciudad_actual == $ciudad ]]; then
      consumo_total = $((consumo_total + consumo_actual))
    fi
  done < Consumos.txt

  if [[ $consumo_total -eq 0 ]]; then
    echo "La ciudad introducida no es válida, inténtelo de nuevo y compruebe que escribe en minusculas."
  else
    echo "El consumo total de $ciudad en 2022 ha sido de $consumo_total."
    break
  fi

done
