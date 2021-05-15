echo "We are going to install the apache server and creating the simple website"
echo "[+] Installing the Apache Server ...."
apt-get install apache2 -y > apache.txt
if [ $? -eq 0 ]; then
   rm apache.txt
   echo "[+] Apache Server installed successfully ...."
   echo "[+] Starting the Apache2 Service"
   service apache2 start
   echo "[+] Creating the file index.html in /var/www/html"
   echo "First Html Page" > /var/www/html/index.html
   if [ $? -eq 0 ]; then
       echo "[+] Apache server installed successfully and Files was created successfully"
       echo "[+] Open the site with your IP Address in Linux machine or any machine with in the network If you are using the AWS Machines then use the Public IP address"
       echo "[+] Opening the Localhost if not Open it directly from the browser"
       #echo "[+] Checking the IP Address"
       #firefox echo "ifconfig eth0 | grep 'inet' | cut -d: -f2 | awk '{ print $2}'"
       echo "[+] Opening the Localhost in Browser"
       firefox localhost
       if [ $? -eq 0 ]; then
       	echo "Thanks For using the webdblog Apache Installer"
       exit
   else
       echo "[-] Error in Opening Please Try Again "
   fi
       exit
   else
       echo "[-] File Creation failed... Try Again"
   fi
else
   echo "[-] Failed to installing the Apache Server ...."
fi
