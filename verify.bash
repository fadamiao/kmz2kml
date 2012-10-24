#!/bin/bash

# Initialization
CONFIRMED='0'
ELEMENTS='0'
# ---

BASH_VER='3'

PROGRAMS[0]='unzip'
PROGRAMS[1]='mv'

for PROGRAM in ${PROGRAMS[@]}; do
	ELEMENTS=$((ELEMENTS+1))
	if ( type -P $PROGRAM &> /dev/null ); then
		CONFIRMED=$((CONFIRMED+1))
		echo "'$PROGRAM'.... OK"
	else
		echo "Preciso do '$PROGRAM' para rodar"
	fi
done

ELEMENTS=$((ELEMENTS+1))
if [ "$BASH_VERSINFO" -ge "$BASH_VER" ]; then
	CONFIRMED=$((CONFIRMED+1))
	echo "Versão de Bash..... OK"
else
	echo "Bash...   Falhou"
fi

if [ "$CONFIRMED" -eq "$ELEMENTS" ]; then
	echo "OK!"
else
	echo "Instale as dependências e depois me rode novamente..."
fi
