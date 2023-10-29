#!/bin/bash
clear
echo
echo """
  :::::::::::::::::::::::::::::::::::::::::::::::::
  :::'###::::'########::'##::::'##:'####::'######::
  ::'## ##::: ##.... ##:. ##::'##::. ##::'##... ##:
  :'##:. ##:: ##:::: ##::. ##'##:::: ##:: ##:::..::
  :##:::. ##: ########::::. ###::::: ##:: ##:::::::
  :#########: ##.. ##::::: ## ##:::: ##:: ##:::::::
  :##.... ##: ##::. ##::: ##:. ##::: ##:: ##::: ##:
  :##:::: ##: ##:::. ##: ##:::. ##:'####:. ######::
  :::::::..::..:::::..::..:::::..::....:::......:::


"""
echo

# Setting  
apt update -y
apt upgrade -y
pkg update -y
pkg upgrade -y
termux-setup-storage
sleep.5

# This Packages For Termux Color Design 
pkg install figlet -y
pkg install python -y
pip install lolcat
sleep 3

# All Package Is Install In Here 
clear
echo """
  :::::::::::::::::::::::::::::::::::::::::::::::::
  :::'###::::'########::'##::::'##:'####::'######::
  ::'## ##::: ##.... ##:. ##::'##::. ##::'##... ##:
  :'##:. ##:: ##:::: ##::. ##'##:::: ##:: ##:::..::
  :##:::. ##: ########::::. ###::::: ##:: ##:::::::
  :#########: ##.. ##::::: ## ##:::: ##:: ##:::::::
  :##.... ##: ##::. ##::: ##:. ##::: ##:: ##::: ##:
  :##:::: ##: ##:::. ##: ##:::. ##:'####:. ######::
  :::::::..::..:::::..::..:::::..::....:::......:::


"""|lolcat
echo
# A Function That Allow To install The Package and PIP
install_packages() {
    echo 'All Package & PIP Install '
    sleep 5
    pkg install python3 -y
    pkg install git -y
    pkg install nano -y
    pkg install python-cryptography -y
    pkg install exa -y
    pkg install lsd -y
    pip install requests
    pip install subprocess.run
    pip install colorama
}
# All Package & PIP install Twice
figlet 'Package 1' | lolcat
install_packages
sleep 5
figlet 'Package 1' | lolcat
install_packages
echo 'Package install Successfully'



# Termux Icon Adding 
clear
figlet 'Seting Icon'| lolcat
cd
touch .bashrc
datafiles=$(cat <<EOL
alias ls='exa --icons --group-directories-first'

function cd() {
    builtin cd "\$@" && ls
}
EOL
)
files=".bashrc"
echo "$datafiles" > "$files"
source ~/.bashrc
sleep 1
echo "alias ls=lsd" >> /data/data/com.termux/files/usr/etc/bash.bashrc
cd
cd .termux
curl -fLo font.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
mkdir fonts
mv font.zip fonts
cd fonts
unzip font.zip
mv "Hack Regular Nerd Font Complete.ttf" ..
cd ..
mv "Hack Regular Nerd Font Complete.ttf" font.ttf
rm -rf fonts
echo ' Icon Added Successfully'
sleep 2


# GitHub Cloning Termux Tool 
clear 
figlet 'Tool Setup'
cd
git clone https://github.com/ArthurOxic/arxic-lab
sleep 1

# For All Offline Setup Will Active 

# Termux Extra Key & PS1
clear
echo
echo """
           █████╗ ██████╗ ██╗  ██╗██╗ ██████╗
          ██╔══██╗██╔══██╗╚██╗██╔╝██║██╔════╝
          ███████║██████╔╝ ╚███╔╝ ██║██║     
          ██╔══██║██╔══██╗ ██╔██╗ ██║██║     
          ██║  ██║██║  ██║██╔╝ ██╗██║╚██████╗
          ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝ ╚═════╝
"""|lolcat
echo
cd
cd ..
cd usr/etc
rm -r bash.bashrc
rm -r motd
filenames="motd"
touch $filenames
filename="bash.bashrc"
insults=(
    "clear"
    "figlet ' ARX Script '| lolcat"
    "echo"
    "PS1='\[\e[1;40m\]┏━[\[\e[1;36m\]Arxic\[\e[1;40m\]]━━[\[\e[1;32m\]\w\[\e[0m\]\[\e[0;97m\]\[\e[1;40m\]]
\n┗━>\[\e[0m\] \[\e[1;40m\]'"
   
    "exa --icons --group-directories-first"
)
touch $filename
echo "#!/data/data/com.termux/files/usr/bin/bash" >> $filename
for insult in "${insults[@]}"; do
    echo $insult >> $filename
done
chmod +x $filename
sleep 1
echo "  [•] Termux PS4 Customized Successfully"
sleep 2
cd
cd .termux
rm -r termux.properties
filename1="termux.properties"
insults1=(
    "extra-keys = [ \
    ['CTRL','cd ','rm ','━━','㉿','━━','TAB','UP', 'ls '], \
    [{key: KEYBOARD, popup: DRAWER},'{}', '-', '[]', '.py', '/', 'LEFT', 'DOWN', 'RIGHT'] \
]")
touch $filename1
for insult in "${insults1[@]}"; do
    echo $insults1 >> $filename1
done
sleep 1
echo "  [•] Extra Key Adding is complete"
sleep 2


# Automatic SMS 
cd 
cd /data/data/com.termux/files/usr/bin 
touch sms
datafiles=$(cat <<EOL
cd
cd arxic-lab
python sms.py

EOL
)
files="sms"
echo "$datafiles" > "$files"
chmod +x sms
echo 'SMS-BOMBER ready'
sleep 2

# Automatic Photo
cd
cd /data/data/com.termux/files/usr/bin 
touch photo
datafiles=$(cat <<EOL
cd
cd arxic-lab
python photo.py

EOL
)
files="photo"
echo "$datafiles" > "$files"
chmod +x photo
echo 'Hide Photo taker in ready '
sleep 2


# Automatica Encryption 
cd
cd /data/data/com.termux/files/usr/bin 
touch encrypt
datafiles=$(cat <<EOL
cd
cd .config/arxic-lab
python encrypt.py

EOL
)
files="encrypt"
echo "$datafiles" > "$files"
echo 'Encryption Tool Ready'
chmod +x encrypt
sleep 2

# Delete Tool
cd
cd /data/data/com.termux/files/usr/bin 
touch arxic-delete
datafiles=$(cat <<EOL
#!/bin/bash
clear
echo
echo """
           █████╗ ██████╗ ██╗  ██╗██╗ ██████╗
          ██╔══██╗██╔══██╗╚██╗██╔╝██║██╔════╝
          ███████║██████╔╝ ╚███╔╝ ██║██║     
          ██╔══██║██╔══██╗ ██╔██╗ ██║██║     
          ██║  ██║██║  ██║██╔╝ ██╗██║╚██████╗
          ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝ ╚═════╝
"""|lolcat
echo
echo " [•] Termux All Set Will Be Deleted"
echo 




pkg uninstall exa
pkg uninstall lsd 
pkg uninstall python-cryptography
pip uninstall subprocess.run
cd 
cd ..
cd usr/etc
rm -r bash.bashrc
touch bash.bashrc
cd
cd .termux
rm -r termux.properties
cd 
rm -r arxic-lab
cd
cd /data/data/com.termux/files/usr/bin 
rm -r sms photo encrypt arxic-delete arxic-help arxic-banner arxic-updata arxic-bash 



EOL
)
files="arxic-delete"
echo "$datafiles" > "$files"
echo 'Termux Delete Tool'
chmod +x arxic-delete
sleep 2



# Termux Arxic Tool Help Command 
cd
cd /data/data/com.termux/files/usr/bin 
touch arxic-help
datafiles=$(cat <<EOL
#!/bin/bash
clear
echo
echo """
           █████╗ ██████╗ ██╗  ██╗██╗ ██████╗
          ██╔══██╗██╔══██╗╚██╗██╔╝██║██╔════╝
          ███████║██████╔╝ ╚███╔╝ ██║██║     
          ██╔══██║██╔══██╗ ██╔██╗ ██║██║     
          ██║  ██║██║  ██║██╔╝ ██╗██║╚██████╗
          ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝ ╚═════╝
"""|lolcat
echo
echo """
[•] sms :-- SMS Bombing 
[•] photo :-- Photo Taking 
[•] encrypt :-- Python files Encryption
[•] arxic-help :-- How too use the Tool
[•] arxic-delete :-- Delete the Tool
[•] arxic-banner :-- Adding name banner and PS4
[•] arxic-bash :-- Bash script permission
[•] arxic-updata :-- Termux All Package Update
"""

EOL
)
files="arxic-help"
echo "$datafiles" > "$files"
chmod +x arxic-help
echo 'Termux Help For Arxic Tool Setup'
sleep 3



# Termux Banner Name adding tool
cd
cd /data/data/com.termux/files/usr/bin 
touch arxic-banner
datafiles=$(cat <<EOL
#!/bin/bash
clear
echo
echo """
           █████╗ ██████╗ ██╗  ██╗██╗ ██████╗
          ██╔══██╗██╔══██╗╚██╗██╔╝██║██╔════╝
          ███████║██████╔╝ ╚███╔╝ ██║██║     
          ██╔══██║██╔══██╗ ██╔██╗ ██║██║     
          ██║  ██║██║  ██║██╔╝ ██╗██║╚██████╗
          ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝ ╚═════╝
"""|lolcat
echo
echo " [•] Banner will be added you termux Back"
echo

cd
cd ..
cd usr/etc
rm -r bash.bashrc
rm -r motd
filenames="motd"
touch $filenames
filename="bash.bashrc"
touch $filename
echo "#!/data/data/com.termux/files/usr/bin/bash" >> $filename
echo "clear">> $filename
echo "echo">> $filename
read -p " [?] Enter a banner name : " input
echo "figlet '$input' | lolcat" >>$filename


read -p " [?] Enter a username : " input
echo "PS1='\[\e[1;40m\]┏━[\[\e[1;36m\]$input\[\e[1;40m\]]━━[\[\e[1;32m\]\w\[\e[0m\]\[\e[0;97m\]\[\e[1;40m\]]\n┗━>\[\e[0m\] \[\e[1;40m\]'" >>$filename
echo "exa --icons --group-directories-first">> $filename

EOL
)
files="arxic-banner"
echo "$datafiles" > "$files"
echo 'Termux Banner change Tool setup'
chmod +x arxic-banner
sleep 2


# Termux All Bash Script Permission 
cd
cd /data/data/com.termux/files/usr/bin 
touch arxic-bash
datafiles=$(cat <<EOL
#!/bin/bash
chmod +x *
EOL
)
files="arxic-bash"
echo "$datafiles" > "$files"
echo 'Bash Script permission Tool Set'
chmod +x arxic-bash
sleep 2


# Termux Update Tool Setup
cd
cd /data/data/com.termux/files/usr/bin 
touch arxic-updata
datafiles=$(cat <<EOL
#!/bin/bash
clear
echo
echo """
           █████╗ ██████╗ ██╗  ██╗██╗ ██████╗
          ██╔══██╗██╔══██╗╚██╗██╔╝██║██╔════╝
          ███████║██████╔╝ ╚███╔╝ ██║██║     
          ██╔══██║██╔══██╗ ██╔██╗ ██║██║     
          ██║  ██║██║  ██║██╔╝ ██╗██║╚██████╗
          ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝ ╚═════╝
"""|lolcat
echo

#!/bin/bash
read -p " [?] Do you want to update all packages? (y/n) " response

if [ "$response" == "y" ]; then
  echo "Updating packages..."
  apt update
  apt upgrade
  echo "Packages updated successfully."
elif [ "$response" == "n" ]; then
  echo " [•] Package update skipped."
else
  echo " [•] Invalid input. Please type y/n "
fi
 
EOL
)
files="arxic-updata"
echo "$datafiles" > "$files"
echo 'Termux Update Tool Set '
chmod +x arxic-updata
sleep 2



# Show | Everything is Set
clear
echo
echo """
           █████╗ ██████╗ ██╗  ██╗██╗ ██████╗
          ██╔══██╗██╔══██╗╚██╗██╔╝██║██╔════╝
          ███████║██████╔╝ ╚███╔╝ ██║██║     
          ██╔══██║██╔══██╗ ██╔██╗ ██║██║     
          ██║  ██║██║  ██║██╔╝ ██╗██║╚██████╗
          ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝ ╚═════╝
"""|lolcat
echo
echo """
[•] sms :-- SMS Bombing 
[•] photo :-- Photo Taking 
[•] encrypt :-- Python files Encryption
[•] arxic-help :-- How too use the Tool
[•] arxic-delete :-- Delete the Tool
[•] arxic-banner :-- Adding name banner and PS4
[•] arxic-bash :-- Bash script permission
[•] arxic-updata :-- Termux All Package Update
"""
