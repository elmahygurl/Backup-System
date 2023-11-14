#defining variables
var1 = source	#source directory
var2 = backup	#backup directory
var3 = 2	#interval
var4 = 2	#max backups
BACKUP_DIR = /home/elmahygurl/Assignment2


prebuild:
	mkdir -p $(BACKUP_DIR)	#to create backup directory if it doesnt exist 
	
backup:
	./backupd.sh $(var1) $(var2) $(var3) $(var4)

.PHONY: backup 
#phony target is a target that does not represent a file on the filesystem. 
