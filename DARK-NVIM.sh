#!/data/data/com.termux/files/user/bin/bash
#Code by Dark-34 2024 ©


#Colours
g="\e[0;32m\033[1m"
en="\033[0m\e[0m"
re="\e[0;31m\033[1m"
b="\e[0;34m\033[1m"
y="\e[0;33m\033[1m"
p="\e[0;35m\033[1m"
c="\e[0;36m\033[1m"
gra="\e[0;37m\033[1m"

path="/data/data/com.termux/files/home/.config/"

function banner {
  clear
  apt install -y figlet > /dev/null 2>&1
  clear
  echo -e "${c}"
  figlet "DARK-NVIM"
}

function main {
  banner 
  echo -e "${g}[${c}✓${g}] Instalando dependencias...\n"
  apt update -y > /dev/null 2>&1
  apt update -y > /dev/null 2>&1
  apt install -y neovim > /dev/null 2>&1
  apt install -y git > /dev/null 2>&1
  if [[ -d "${path}/nvim" ]]; then
    rm -rf "${path}/nvim"
    git clone https://github.com/NvChad/starter ~/.config/nvim > /dev/null 2>&1
    banner 
    echo -e "${g}[${c}✓${g}] Instalado Correctamente\n" 
    echo -e "${g}[${c}✓${g}] Use ESC :q! para salir del editor\n"
    sleep 4
    nvim
  else
	  banner 
	  git clone https://github.com/NvChad/starter ~/.config/nvim > /dev/null 2>&1
	  banner
	  echo -e "${g}[${c}✓${g}] Instalado Correctamente\n"
	  echo -e "${g}[${c}✓${g}] Use ESC :q! para salir del editor\n"
	  sleep 4
	  nvim
    
    
  fi
}
main
