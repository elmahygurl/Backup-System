# What does this code do?
Once this code is run, the directories/files in the **source** are being checked every **interval** of time (milliseconds) and if any modification was found, it will be immediately backed up in the backup directory.
The backups are stored in directories with their names in the following format “_Year-Month-Day-Hours-Minutes-Seconds_”.

# Where to find the code?
Open the backup_system directory. Open the backupd.sh file.

# What to download before running the code?
Type into terminal “**sudo apt install make**”

# How do I run the code?
Simply open terminal, type “**make backup**” 

# Where to find the initial source and bakcup folders?
Open the _7668-lab2_ directory. The directory **source** and the directory **backup** are there.
If **backup** does not exist, don't worry, it will be created when you run the code and back up your source files.

# How so I stop the code form running?
**CTRL+C**

# How do I change the source and backup destinations?
They are initially set but if you want to change them, open the Makefile and at the very top, you will find **var1** and **var2**. Modify **var1** to be your source directory and the **var2** to be your backup directory. (Only replace what is after the equal sign).

# What if I do not have a specific backup destination?
Then do not change anything in the Makefile as this will be taken care of and your backups will be saved in a directory called **backup** in the _7668-lab2_ directory.

# How do I change the intervals between backups?
Open the Makefile, change the number after **var3=** to your preferred number of milliseconds between backups.

# How do I change the max number of backups?
Open the Makefile, change the number after **var4=** to your preferred number of maximum backups that will be saved.
