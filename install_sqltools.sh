#!/bin/bash
########################################
#
# Setup de SQLcmd para Linux
#
# 1) Para ejecutar se debe otorgar permisos
# chmod u+x install_sqltools.sh
#
# 2) Ejecutar instalador con
# sudo ./install_sqltools.sh
#
# 3) Conectar a bd
# sqlcmd -S 192.555.5.555 -U SA -P '<YourPassword>'
#
# 
########################################


#Import GPG keys
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

#Registrar repositorio
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list

#Actualizar repos
sudo apt-get update 
sudo apt-get install mssql-tools unixodbc-dev

#Add PAth para login sessions
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile

#Opcion Sin login interactivo
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc

