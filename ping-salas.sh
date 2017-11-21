#!/bin/bash

# Name of the classrooms, with their respective list of designated IPs.
# To save the array in a variable, you have to enclose it between (), so bash
# understands that you want to save the whole array, not only the first element.
A=({2..26})
E=({27..51})
F=({52..76})
ET=({77..100})
classroom=

# ${n^^} turns the value of $n into caps.
# Bash doesn't have pointers per se, but you can store in $classroom a string
# which we will use later on. $m[@] means "all the elements of the array m".
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
    echo 'Please use a valid option:'
    echo 'A    E    F    ET'
    exit 1
    ;;
esac

# So we had a string with the name of our classroom + [@]. p.e. 'ET[@]'.
# ${!n} takes the value of $n, uses it as a key, and returns the value of that
# key. This is 'indirect expansion'. So ${!classroom} -> ${ET[@]} -> {77..100}.
for i in "${!classroom}"; do
  if ping -c 1 "159.90.9.$i" > /dev/null; then
    echo "$i ON"
  else
    echo "$i OFF"
  fi
done
