# Script agendado para realizar backup's em Shell

1. Script que realiza a sincronização
 ```shell
#!/bin/bash

# Recebe a data atual do sistema e salva no formato YYYY-MM-DD HH:mm:SS
date=$(date '+%Y-%m-%d %H:%M:%S');

# Sincroniza os arquivos da pasta "Dados" e os envia para a pasta "$HOME/backup/BACKUP-{data atual}
rsync -avh --progress "$HOME/Área de Trabalho/Dados" "$HOME/backup/BACKUP-$date";
 ```
2. Configuração do cron
```
# Executa o script acima a cada 1 minuto
* * * * * /home/user/Documentos/git/tads-sync-script/script.sh
```
