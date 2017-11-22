#!/bin/bash

A=({2..26})
E=({27..51})
F=({52..76})
ET=({77..100})

while getopts ':f:c:hv' OPTION; do
  case "$OPTION" in
    f)
      classroom=$OPTARG
      ;;
    c)
      comm="${OPTARG^^}[@]"
      ;;
    h)
      echo "Usage: $(basename $0) [-v] [-h] [-f name] [-c 'command']" >&2
      exit 0
      ;;
    v)
      echo 'MA-MA MASIVO.' >&2
      echo 'Command line utility for massive working. Version 0.2' >&2
      exit 0
      ;;
    :)
      echo "Missing argument for $OPTARG" >&2
      echo "Usage: $(basename $0) [-v] [-h] [-f name] [-c 'command']" >&2
      exit 2
      ;;
    ?)
      echo "Invalid flag." >&2
      echo "Usage: $(basename $0) [-v] [-h] [-f name] [-c 'command']" >&2
      exit 2
      ;;
  esac
done

if [[ "$comm" ]] && [[ "$clasroom" ]]; then
  for i in "${!classroom}"; do
    pc=159.59.9.$i
    if ping -c 1 $pc >/dev/null; then
      echo "Running '${comm}' in $pc."
      ssh root@$pc "${comm}"
      echo
    else
      echo "$pc is off."
    fi
  done
else
  echo "Missing some argument in the script." >&2
  echo "Usage: $(basename $0) [-v] [-h] [-f name] [-c 'command']" >&2
  exit 2
fi
