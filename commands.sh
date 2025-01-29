python3.8 -m venv antenv
source antenv/bin/activate
make Install
az webapp up -n flask-ml-service -g Azuredevops -sku F1
