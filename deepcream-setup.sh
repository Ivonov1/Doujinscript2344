#/bin/bash
git clone https://gitlab.com/ubcseagull/doujinci.git
#wget https://repo.anaconda.com/archive/Anaconda3-2024.06-1-Linux-x86_64.sh
chmod +x Anaconda3-2024.06-1-Linux-x86_64.sh
./Anaconda3-2024.06-1-Linux-x86_64.sh -b
export PATH=$PATH:$HOME/anaconda3/bin
export BARORMOSAIC=False
exec bash
