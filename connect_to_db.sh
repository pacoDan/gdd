MSSQL_USERNAME=$(cat resources/CREDENTIALS | grep MSSQL_USERNAME | cut -d "=" -f 2)
MSSQL_PASSWORD=$(cat resources/CREDENTIALS | grep MSSQL_PASSWORD | cut -d "=" -f 2)

mssql-cli -U $MSSQL_USERNAME -P $MSSQL_PASSWORD
