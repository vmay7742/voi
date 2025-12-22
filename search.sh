#!/bin/sh

#kitty -e sh -c "fzf --preview" &

#kitty -e sh -c "
#  plocate -i . |
#  fzf --exact --preview 'head -20 {}' --preview-window=down:7
#" &

kitty -e sh -c '
  FILE=$(plocate -i . | fzf --exact --preview "head -20 {}" --preview-window=down:5)
  if [ -n "$FILE" ]; then
    exec ${EDITOR:-vim} "$FILE"
  fi
'
