#!/bin/bash

# Update and upgrade packages
apt update -y
apt upgrade -y
pkg update -y
pkg upgrade -y
termux-setup-storage
sleep 5

# Install required packages
pkg install figlet python -y
pip install lolcat

# Function to install additional packages
install_packages() {
    echo 'Processing to install additional packages'
    sleep 5
    pkg install python3 git nano python-cryptography exa lsd -y
    pip install requests colorama
}

install_packages
echo 'Packages installed successfully'
sleep 1

# Termux Extra Key Configuration
clear
figlet 'Extra Key' | lolcat
cd
cd .termux
rm -r termux.properties

# Define the extra-keys configuration
extra_keys=(
    "extra-keys = ["
    "    ['CTRL','cd','rm','━━','㉿','━━','TAB','UP','ls'],"
    "    [{key: KEYBOARD, popup: DRAWER},'{}', '-', '[]', '.py', '/', 'LEFT', 'DOWN', 'RIGHT']"
    "]"
)

# Write the extra-keys configuration to termux.properties
filename1="termux.properties"
touch $filename1
for key in "${extra_keys[@]}"; do
    echo $key >> $filename1
done

echo "Extra Key Configuration is complete"
sleep 2

# Termux Interface Customization
clear
figlet 'Interface' | lolcat
cd
cd ..
cd usr/etc
rm -r bash.bashrc
rm -r motd
touch motd
filename="bash.bashrc"

# Define custom PS1 prompt
custom_ps1=(
    "clear"
    "figlet ' ARX Script ' | lolcat"
    "echo"
    "PS1='\\[\\e[1;40m\\]┏━[\\[\\e[1;36m\\]Arxic\\[\\e[1;40m\\]]━━[\\[\\e[1;32m\\]\\w\\[\\e[0m\\]\\[\\e[0;97m\\]\\[\\e[1;40m\\]\\n┗━>\\[\\e[0m\\] \\[\\e[1;40m\\]'"
    "cd /sdcard/termux-files"
    "exa --icons --group-directories-first"
)

# Write custom PS1 prompt to bash.bashrc
touch $filename
echo "#!/data/data/com.termux/files/usr/bin/bash" >> $filename
for line in "${custom_ps1[@]}"; do
    echo $line >> $filename
done

chmod +x $filename
echo "Termux PS1 Customized Successfully"
sleep 2

# Termux Icon Configuration
clear
figlet 'Setting Icon' | lolcat
cd
touch .bashrc

# Define alias and function for ls command
icon_config=(
    "alias ls='exa --icons --group-directories-first'"
    "function cd() {"
    "    builtin cd \"\$@\" && ls"
    "}"
)

# Write icon configuration to .bashrc
files=".bashrc"
echo "${icon_config[@]}" > "$files"
source ~/.bashrc

# Download and set Nerd Font
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

echo 'Icon Configuration and Nerd Font Added Successfully'
sleep 2

# Tool Setup
clear
figlet 'Tool Setup'
git clone https://github.com/ArthurOxic/arxic-lab
cd
cd .config
mkdir -p script
cd
mv arxic-lab/encrypt.py .config/script/
mv arxic-lab/sms.py .config/script/
mv arxic-lab/photo.py .config/script/
rm -rf arxic-lab
echo 'Termux Tool Setup Complete'
sleep 1

# Create tool scripts
cd /data/data/com.termux/files/usr/bin
echo "cd" > sms
echo "cd .config/script" >> sms
echo "python sms.py" >> sms
chmod +x sms

echo "cd" > photo
echo "cd .config/script" >> photo
echo "python photo.py" >> photo
chmod +x photo

echo "cd" > encrypt
echo "cd .config/script" >> encrypt
echo "python encrypt.py" >> encrypt
chmod +x encrypt

# Reset Termux setup script
cd /data/data/com.termux/files/usr/bin
echo "#!/bin/bash" > override
echo "pkg uninstall exa" >> override
echo "pkg uninstall lsd" >> override
echo "pkg uninstall python-cryptography" >> override
echo "pip uninstall subprocess.run" >> override
echo "cd" >> override
echo "cd .." >> override
echo "cd usr/etc" >> override
echo "rm -r bash.bashrc" >> override
echo "cd" >> override
echo "cd .termux" >> override
echo "rm -r termux.properties" >> override
echo "cd" >> override
echo "cd .config" >> override
echo "rm -r script" >> override
echo "cd" >> override
echo "cd /data/data/com.termux/files/usr/bin" >> override
echo "rm -r sms photo encrypt arx override" >> override

chmod +x override

# Termux Help Script
cd
cd /data/data/com.termux/files/usr/bin
echo "clear" > arx
echo "figlet 'ARX Script' | lolcat" >> arx
echo "echo 'Your Termux is ready for work' | lolcat" >> arx
echo "echo 'I have installed some packages' | lolcat" >> arx
echo "echo 'Python pip installed some packages' | lolcat" >> arx
echo "echo 'Your Termux looks customized' | lolcat" >> arx
echo "echo 'SMS-BOMBER tool is active' | lolcat" >> arx
echo "echo 'Hide way Photo tool is active' | lolcat" >> arx
echo "echo 'Python Script Encryption tool is active' | lolcat" >> arx
echo "echo" >> arx
echo "echo '######### Modification ##########' | lolcat" >> arx
echo "echo 'Type override to delete all the modifications' | lolcat" >> arx
echo "echo 'Type sms for SMS Bombing' | lolcat" >> arx
echo "echo 'Type photo for Photo Taking' | lolcat" >> arx
echo "echo 'Type encrypt for encrypting Python Scripts' | lolcat" >> arx
chmod +x arx

echo 'Termux Help Script Setup Complete'

#
