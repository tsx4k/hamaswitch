# HamaSwitch
Logmein Hamachi Linux profile switcher by commandline

# 1. What is HamaSwitch
HamaSwitsh is a bash (/bin/sh) script for easy switch between diferrent profiles of Logmein Hamachi (www.vpn.net)

# 2. Preparing Logmein Hamachi profiles folders

Main configuration files for Logmein Hamachi is in: /var/lib/logmein-hamachi

So if you are succesfully attached to account and network, there will be config files and keys for that connection.

For different Profiles you need to copy current profile files to special folders with this naming manner:

/var/lib/logmein-hamachi-PROFILENAME

eg.

/var/lib/logmein-hamachi-network1

/var/lib/logmein-hamachi-network2

/var/lib/logmein-hamachi-abcd


# 3. Usage

After preparation you can easy switch between those profiles executing a shell command and HamaSwitch:

sudo ./hamaswitch.sh PROFILENAME

eg.

sudo ./hamaswitch.sh network1

sudo ./hamaswitch.sh network2

sudo ./hamaswitch.sh abcd

etc.


* make sure you chmod hamaswitch.sh as executable and run as root/sudo.

# 4. How it works

Script must be run with admin priviledges (root/sudo) because of handling service start/stop and modifying protected files at /var/lib/logmein-hamachi path.


Main steps of the HamaSwitch script:

a) stop hamachi service

b) backup old /var/lib/logmein-hamachi path

c) copy /var/lib/logmein-hamachi-PROFILENAME into /var/lib/logmein-hamachi

d) start hamachi service 



# 5. Enjoy :)


