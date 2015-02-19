#Demo
Requirments 
1. railo-4.2.1.008-pl0-linux-x64-installer.run - "getrailo.org"
2. install.sh from https://raw.githubusercontent.com/mdelaney68/Demo/master/src/install.sh
3. Root access ot Ununtu server

To install application ssh into your Ubuntu server and run the following commands in the order listed one at a time.

##sudo wget -O railo-4.2.1.008-pl0-linux-x64-installer.run http://www.getrailo.org/railo/remote/download42/4.2.1.008/tomcat/linux/railo-4.2.1.008-pl0-linux-installer.run
##sudo wget -O railo-4.2.1.008-pl0-linux-x64-installer.run http://officedev.digicon.com/deployment/railo-4.2.1.008-pl0-linux-x64-installer.zip
#####!!!NOTE!!! When the above file is finished and you see "saved [163577140/163577140]" press enter key to finish.!!! This is a bug with the wget tool.

sudo wget -O install.sh https://raw.githubusercontent.com/mdelaney68/Demo/master/src/install.sh
sudo chmod 775 install.sh
sudo ./install.sh




