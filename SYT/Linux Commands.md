#login
## login
~~~cmd
ssh user8@172.16.5.55
~~~

#commands
## commands
*passwd* to change password

*who* to see who is in the network

*whoami* to see current user

*echo* same in win (multiple spaces with ““, to file with > and >>)

*ls* shows directory (dir in win)

    |-l shows directory with timestamps

    |-al show all

*cat* writes files to console, can also type to file (type in win)

*man* <u>command</u> shows desc. of command

*touch* creates empty file

*cp* <u>source destination</u> copies a file to destination

*mv* move command

*rm* remove (same in win)

    |-r recursive

*mkdir* creates a directory (md in win)

*cd* change directory (same in win)

*pwd* present working directory, shows current directory

*rmdir* remove directory

*wc* <u>data</u> word count

-rwxrwxrwx Permissions (d directory; r read; w write; x execute)

>first Block: user

>second Block: group

>third Block: other

*grep* search function

    |$ at end of line

*sudo* (superuserdo) executes command as root

*chmod* changes Permissions

    |g+w gives the group write permission

    |a+w gives everyone write permission

    |777 octal mode: gives everyone all permissions

*nano* opens editor

#Scrips

#ifSchleife
## if-Schleife

-b _file_      True if _file_ is a Block special device. [[ -b demofile ]]

 -c _file_      True if _file_ is a Character special device. [[ -c demofile ]]

 -d _file _     True if _file_ is a Directory. [[ -d demofile ]]

 -e _file _     True if _file_ Exists. [[ -e demofile ]]

 -f _file _     True if _file_ is a regular File. [[ -f demofile ]]

 -g _file_      True if _file_ has its set-group-id bit set. [[ -g demofile ]]

 -G _file_      True if _file_ is owned by the current effective group id. [[ -G demofile ]]

 -k _file_      True if _file_ has its "sticky" bit set. [[ -k demofile ]]

 -h _file_      True if _file_ is a symbolic Link. [[ -h demofile ]]
 -L _file_      True if _file_ is a symbolic Link. [[ -L demofile ]]

 -O _file_      True if _file_ is owned by the current effective user id. [[ -O demofile ]]

 -p _file_      True if _file_ is a named Pipe. [[ -p demofile ]]

 -r _file_      True if _file_ is readable. [[ -r demofile ]]

 -S _file_      True if _file_ is a Socket. [[ -S demofile ]]

 -s _file_      True if _file_ has a Size greater than zero. [[ -s demofile ]]

 -t [FD]      True if FD is opened on a terminal.  If FD is omitted, it defaults to 1 (standard output). [[ -t demofile ]]

 -u _file_      True if _file_ has its set-user-id bit set. [[ -L demofile ]]

 -w _file_      True if _file_ is writable. [[ -w demofile ]]

 -x _file_      True if _file_ is executable. [[ -x demofile ]]

-z *file*        True if *file* is zero

_file_1 -ef _file_2    True if _file_1 and _file_2 have the same device and inode numbers,  i.e. they are hard links to each other.

#parameter
## parameters
ps process status

\$0 the programm itself
\$$
\$* all Parameter
\$1 ... \$9 Parameter 



#loops
## loops
simple loop: 

~~~bash
for i in {numbers}
	do
		... $i #<- access to loop variable
done
~~~

range loop:

~~~bash
for i in {number..number}
	do         #^ adds one to the number (until second number is reached)
		...
done
~~~

range loop with custom increment:

~~~bash
for i in {number..incNumber..number}
	do              #^ sets the increment
		...
done
~~~


## find
1. automatisieren
2. komplexität der Befehle

find \[-H] \[-L] \[-P] path expression
		^                                 ^
					optional          (options) test actions

mandatory = verpflichtend

find path
		^
		z.B. /
			  /home
	sucht im angegeben Pfad und allen Unterverzeichnissen

Tests:

-name
-iname (like name but case insensitive)
-empty
-user
-size
-type
