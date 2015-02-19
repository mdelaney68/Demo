# Demo
Requirments 
1. railo-4.2.1.008-pl0-linux-x64-installer.run
2. install.sh from https://raw.githubusercontent.com/mdelaney68/Demo/master/src/install.sh
3. Root access ot Ununtu server


To install application log into your Ubuntu server and run the following commands separately.

sudo wget -O railo-4.2.1.008-pl0-linux-x64-installer.run http://www.getrailo.org/down.cfm?item=/railo/remote/download42/4.2.1.008/tomcat/linux/railo-4.2.1.008-pl0-linux-x64-installer.run&thankyou=true

sudo wget -O install.sh https://raw.githubusercontent.com/mdelaney68/Demo/master/src/install.sh

sudo chmod 775 install.sh

sudo ./install.sh



