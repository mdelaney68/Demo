#Demo install 
<strong>Requirments</strong>
<br>
1. railo-4.2.1.008-pl0-linux-x64-installer.run - This application uses the Railo application server. Optionally it can be download from http://www.getrailo.org/index.cfm/download/ however the install.sh will automatically download detect if the file is missing and download it if necessary.
<br>
2. install.sh file from https://raw.githubusercontent.com/mdelaney68/Demo/master/src/install.sh - This file performs an scripted install of the demo application and the railo server. The railo server default setting can be fould in railoinstall.txt in the same directory you ran install.sh from.
<br>
3. Root user access to a Ubuntu Server
<br>
<br>
<strong>To install application ssh into your Ubuntu server and run the following commands. The install script will download all necessary files and install the application and the railo server.</strong>
<br>
sudo wget -O install.sh https://raw.githubusercontent.com/mdelaney68/Demo/master/src/install.sh
<br>
sudo chmod 775 install.sh
<br>
sudo ./install.sh
<br>
<br>
