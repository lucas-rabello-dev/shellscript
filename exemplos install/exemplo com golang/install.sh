#!/usr/bin/env bash
# isso ai em cima diz qual interpretador deve rodar o script
set -e

BIN_NAME="garrafa"

echo "==> Instalando $BIN_NAME ..."

# compilando o main.go
go build -o garrafa main.go

# Verifica se o binário existe no diretório atual
if [ ! -f "$BIN_NAME" ]; then
    echo "Erro: o binário '$BIN_NAME' não foi encontrado no diretório atual."
    exit 1
fi

# Move para /usr/local/bin
sudo mv "$BIN_NAME" /usr/local/bin/

# Ajusta permissões
sudo chmod +x /usr/local/bin/"$BIN_NAME"

echo "==> Instalação concluída!"
echo "Você pode usar o comando: $BIN_NAME"
