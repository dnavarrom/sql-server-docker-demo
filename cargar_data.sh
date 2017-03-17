#!/bin/bash
########################################
#
# Cargar base de datos de prueba
# Primero se debe ejecutar el instalador de sqlcmd
#
# 1) Para ejecutar se debe otorgar permisos
# chmod u+x cargar_data.sh
#
# 2) Ejecutar instalador con
# sudo ./cargar_data.sh
#
# 3) Cargar Data
# sqlcmd -S localhost -U SA -P 'Passw2ord!' -i ./sample_db.sql
#
# 4) Verificar que la base de datos SCHOOL esta cargada
# sqlcmd -s 1ocalhost -U SA -P 'Passw2ord!' -q "exec sp_databases"
########################################