sudo apt update
sudo apt install -y nmap
nmap --version

sudo nmap -sS -sV -O -oN scan-results/sample-scan-results.txt 192.168.56.102

# Top 100 ports
sudo nmap --top-ports 100 -oN scan-results/top-100.txt 192.168.56.102

# NSE script (http-enum)
sudo nmap -sV --script=http-enum -oN scan-results/http-enum.txt 192.168.56.102
