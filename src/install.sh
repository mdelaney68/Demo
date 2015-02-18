#!/bin/sh

# Make sure needed applications are installed
echo "Installing tools"
sudo apt-get install wget zip unzip
sudo apt-get install zip 
sudo apt-get install unzip
if [ ! -f "railo-4.2.1.008-pl0-linux-x64-installer.run" ]
then
	sudo wget -O railo-4.2.1.008-pl0-linux-x64-installer.run  http://www.getrailo.org/down.cfm?item=/railo/remote/download42/4.2.1.008/tomcat/linux/railo-4.2.1.008-pl0-linux-x64-installer.run&thankyou=true
fi

if [ ! -f "Demo-master.zip" ]
then
	sudo wget -O Demo-master.zip  https://github.com/mdelaney68/Demo/archive/master.zip
fi

sudo chmod 777 railo-4.2.1.008-pl0-linux-x64-installer.run

# install Railo  - see railoinstall.txt for defaultsettings
echo "==================="
echo "  Installing Railo "
echo "  Please Wait!! - This may take several minutes"
echo "==================="
sudo ./railo-4.2.1.008-pl0-linux-x64-installer.run --mode unattended --optionfile railoinstall.txt
sudo chmod 777 /opt/railo/ -R
# install Demo-master into Railo website root
echo "Installing Demo-master "
# sudo unzip -o Demo-master.zip  -d /opt/railo/tomcat/webapps/ROOT/
sudo unzip -o Demo-master.zip  -d ./tmp
sudo cp -r ./tmp/Demo-master/src/wwwroot /opt/railo/tomcat/webapps/ROOT/
sudo rm ./tmp -R
echo "==================="
echo "  Install Complete "
echo "Access http://localhost:8888/ to view the application"
echo "==================="

