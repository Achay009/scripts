#!/bin/bash


if [[ "${#}" -lt 1 ]]
then
    echo "Usage {directory} must be added as argument"
    exit 1
fi

NAME=$(date +%Y%m%d-%H%M%S)

echo "Using ${@}_${NAME} as name of zipped"

echo  "this is ${BASH_SOURCE[0]%/*}"

# sleep 5
# tar -czvf "${@}_${NAME}.tar.gz" "${@}"
tar -czvf "${@}_${NAME}.tar.gz" "${@}" && base64 -i "${@}_${NAME}.tar.gz" -o "${@}_${NAME}.txt" && rm "${@}_${NAME}.tar.gz"