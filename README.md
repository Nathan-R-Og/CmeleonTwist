# CmeleonTwist
a wip decomp of chameleon twist (1997)
currently jp only, but tbf literally every version is basically the same so lol
## HOW TO DO
**HAVE WSL2**

if you don't, literally google it and microsoft has a big ass tutorial for it (or just have linux i guess . . . )

IF(NOT HAS WSL){

 -sudo apt install make
 -sudo apt install gcc



}


go ahead and `cd` into where you wanna go. then



- `git clone --recursive <this link>`

to get that juicy goodness

**get** a jp rom of chameleon twist, name it baserom.z64 and plop it into the new directory

now, **MAKE SURE** to download some prereqs. this can be done with
- `pip install -r requirements.txt`

everything should be set up, `cd /mnt/`*whateverdirectory*`/cmeleontwist` and run

- `make setup`

then run

- `make`

if ya wanna clean it out and start over do `make clean`, i removed a bit where it removed the rom just in case so lol
