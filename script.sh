#!/bin/bash
#Script que realiza a sincronização de arquivos da pasta "Dados" do desktop e armazena seu backup na pasta "backup" na home do usuário.

date=$(date '+%Y-%m-%d %H:%M:%S');

rsync -avh --progress "$HOME/Área de Trabalho/Dados" "$HOME/backup/BACKUP-$date";