#!/usr/bin/env bash
# isso ai em cima diz qual interpretador deve rodar o script

BIN_NAME="garrafa"
BIN_PATH="/usr/local/bin/$BIN_NAME"

echo "Removendo $BIN_NAME das variáveis de ambiente..."

if [ -f "$BIN_PATH" ]; then
    sudo rm "$BIN_PATH"
    echo "Removido com sucesso!"
else
    echo "O binário não existe em $BIN_PATH"
fi
