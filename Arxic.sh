#!/bin/bash
apt update -y
apt upgrade -y
pkg update -y
pkg upgrade -y
termux-setup-storage
sleep.5
# Package List 
pkg install figlet -y
pkg install python -y
pip install lolcat
sleep 3
# Function to install the packages
figlet 'Package' | lolcat 
install_packages() {
    echo 'Processing to install the package'
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
install_packages
sleep 5
install_packages
echo 'Package install Successfully'
sleep 1
# Termux Extra Key Adding 
clear
figlet 'Extra Key'| lolcat
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
echo "Extra Key Adding is complete"
sleep 2


#Termux Interface
clear
figlet 'InterFace'| lolcat
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
    "cd /sdcard/termux-files"
    "exa --icons --group-directories-first"
)
touch $filename
echo "#!/data/data/com.termux/files/usr/bin/bash" >> $filename
for insult in "${insults[@]}"; do
    echo $insult >> $filename
done
chmod +x $filename
sleep 1
echo " Termux PS4 Customized Successfully"
sleep 2


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



clear 
figlet 'Tool Setup'
cd
git clone https://github.com/ArthurOxic/arxic-lab
sleep 1
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
cd
cd /data/data/com.termux/files/usr/bin 
touch encrypt
datafiles=$(cat <<EOL
cd
cd arxic-lab
python encrypt.py

EOL
)
files="encrypt"
echo "$datafiles" > "$files"
echo 'Encryption Tool Ready'
chmod +x encrypt

sleep 2
cd
cd /data/data/com.termux/files/usr/bin 
touch arxic
datafiles=$(cat <<EOL
chmod +x *

EOL
)
files="arxic"
echo "$datafiles" > "$files"
echo 'Arxic Ready'
chmod +x arxic
sleep 2

cd /data/data/com.termux/files/usr/bin 
touch override
datafiles=$(cat <<EOL
#!/bin/bash
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
cd .config
rm -r script
cd
cd /data/data/com.termux/files/usr/bin 
rm -r sms photo encrypt arx override

EOL
)
files="override"
echo "$datafiles" > "$files"
echo 'Termux Reset setup'
chmod +x override
sleep 2



#Termux Help Arxic
cd
cd /data/data/com.termux/files/usr/bin 
touch arx
datafiles=$(cat <<EOL
clear
figlet 'ARX Script' | lolcat

echo ' You Termux Is Ready Work'|lolcat
echo ' I have install Some Package '|lolcat
echo ' Python pip install some'|lolcat
echo ' Your Termux Looks Change it'|lolcat
echo ' SMS-BOMBER Tool Active'|lolcat
echo ' Hide way Photo is Active'|lolcat
echo ' Python Script Encryption is Active'|lolcat
echo
echo "######### Modification ##########"|lolcat
echo ' Type override for delete all the modification'|lolcat
echo ' Type sms for SMS Bombing'|lolcat
echo ' Type Photo for Photo Taking'|lolcat
echo ' Type encrypt For encryption Python Script'|lolcat
echo ' Type arxic for Connect Me'|lolcat
echo ' Type arx for help'|lolcat
echo

EOL
)
files="arx"
echo "$datafiles" > "$files"
chmod +x arx
echo 'Termux help setup'

sleep 3
clear
figlet 'ARX Script' | lolcat

echo ' You Termux Is Ready Work'|lolcat
echo ' I have install Some Package '|lolcat
echo ' Python pip install some'|lolcat
echo ' Your Termux Looks Change it'|lolcat
echo ' SMS-BOMBER Tool Active'|lolcat
echo ' Hide way Photo is Active'|lolcat
echo ' Python Script Encryption is Active'|lolcat
echo
echo "######### Modification ##########"|lolcat
echo ' Type override for delete all the modification'|lolcat
echo ' Type sms for SMS Bombing'|lolcat
echo ' Type Photo for Photo Taking'|lolcat
echo ' Type encrypt For encryption Python Script'|lolcat
echo ' Type arxic for Connect Me'|lolcat
echo ' Type arx for help'|lolcat
echo
