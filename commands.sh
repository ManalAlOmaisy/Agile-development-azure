create virtual envirnomnet:

python3.8 -m venv antenv
source antenv/bin/activate
make Install

create webapp:
az webapp up -n flask-ml-service -g Azuredevops -sku F1

prediction:
vim make_predict_azure_app.sh
bash make_predict_azure_app.sh

configuring agent:
sudo snap install docker
sudo groupadd docker
sudo usermod -aG docker $USER

curl -O https://vstsagentpackage.azureedge.net/agent/2.202.1/vsts-agent-linux-x64-2.202.1.tar.gz
mkdir myagent && cd myagent
tar zxvf ../vsts-agent-linux-x64-2.202.1.tar.gz
./config.sh

sudo ./svc.sh install
sudo ./svc.sh start

sudo apt-get update
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa

sudo apt install python3.8
sudo apt-get install python3.8-venv
sudo apt-get install python3-pip

Installing the tools for the Pipeline build steps.
sudo apt-get install python3.8-distutils
sudo apt-get -y install zip

pip install pylint==3.2.6
pip show --files pylint

