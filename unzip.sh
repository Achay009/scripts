#!/bin/bash

base64 -d  -i "${@}" | tar -xzv --directory "${BASH_SOURCE[0]%/*}" && rm "${@}"