# CmeleonTwist
A W.I.P Decomp of Chameleon Twist (1997) (N64) JP v1.0
## Setup

1) Follow [this](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-10#1-overview) tutorial to get WSL2 if you arent using linux

2) Run these commands 
    - `sudo apt install make`
    - `sudo apt install gcc`
    - `sudo apt install python3 python3-pip`

3) `cd` into the file location you wish to use, then
    - `git clone --recursive https://github.com/Nathan-R-Og/CmeleonTwist.git`

4) **get** a jp v1.0 rom of chameleon twist, name it baserom.z64 and move it into the root of the cloned directory

5) Run this command:
    -   `pip3 install -r requirements.txt`

6) In the root directory of the cloned folder run:
    - `make setup`
    
    then run
    - `make`

*If you need to clean it out and start over do `make clean` (this will keep the rom)*