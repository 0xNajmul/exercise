####Search Specific ip address same Router
nmap -sS IP_ADDRESS -A
####Scan a Website
nmap website_name
#####Scan Multiple Address
nmap ip_one ip_two ip_more
#Scan all Devices
nmap 192.168.1.1-30
nmap 192.168.1.*
nmap 192.168.1.0-255

#Scan From file file.txt on Desktop (cd Desktop) (in List)
nmap -iL file.txt 

#Scan Agressively (Scan More Data)
nmap --traceroute ip_Address
nmap ip_Address -A

#Detect Operating System (Capital O)
nmap -O ip_Address 

#Version of Each Service
nmap -sV ip_Address

#Scan Every Ports (65000)
nmap -p- ip_Address

#Scan top 100 Ports instead of 1000 Ports (Total Port: 65000)
nmap -F ip_Address (F FOR First Search)

#Scan Specific Port 
nmap -p 20-25,80 ip_Address   or
nmap -p http,mysql ip_Address

#Port 443 is for https ; 80 Http ; 21 FTP ;22 SSH ; 25 SMTP

#Scan only Open PORTS
nmap --open ip_Address

#Save Scan Reasult with Scan 
nmap -F -oN Desktop/file.txt ip_Address (for txt format)
nmap -F -oX Desktop/file.xml ip_Address (for xml format)


#Scan with Subnet Mask 
nmap -F ip_Address/subnet_Mask
ex : nmap -F 192.168.1.1/24

#Scan all Ports (Ping Swwep)
 nmap -sP 199.207.13.0/24



#Full : https://hackertarget.com/nmap-cheatsheet-a-quick-reference-guide/#additionalresources
