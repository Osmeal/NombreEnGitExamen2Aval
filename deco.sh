#!/bin/bash
ciudad = "$1"
promedio = $(./cmedia.sh "$ciudad")

if (( promedio < 400 )); then
    echo "ECO"
else
    echo "NO ECO"
fi