#!/bin/bash

# Name of the classrooms, with their respective list of designated IPs.
A=({2..26})
E=({27..51})
F=({52..76})
ET=({77..100})
classroom=

if [[ $1 ]]; then
  case ${1^^} in
    A)
      classroom="${1^^}[@]"
      ;;
    E)
      classroom="${1^^}[@]"
      ;;
    F)
      classroom="${1^^}[@]"
      ;;
    ET)
      classroom="${1^^}[@]"
      ;;
    *)
      echo 'Invalid.'
      exit 1
      ;;
  esac
else
  PS3='Select a number and press Enter: '
  option=('A' 'E' 'F' 'ET')
  select room in "${option[@]}"
  do
    case "$room" in
      A) 
	classroom="${room}[@]"
	break
	;;
      E) 
	classroom="${room}[@]"
	break
	;;
      F) 
	classroom="${room}[@]"
	break
	;;
      ET) 
	classroom="${room}[@]"
	break
	;;
      *) 
	echo 'Invalid.'
	;;
    esac
  done
fi

for i in "${!classroom}"; do
  if ping -c 1 "159.90.9.$i" > /dev/null; then
    echo "$i ON"
  else
    echo "$i OFF"
  fi
done
