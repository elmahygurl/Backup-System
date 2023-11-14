#/bin/bash 
source_dir=$1 	####input
backup_dir=$2 	####input
max_backups=$4  ####input 
interval=$3     ####input 
ls -lR $source_dir > directory-info.last.txt
 
while :
do
 
sleep $interval   
ls -lR $source_dir > directory-info.new.txt
 
statuss=$(diff directory-info.new.txt directory-info.last.txt) 
 
if [ $? -eq 0 ]; then    #if no change
 	echo "No change"
 	continue
else
 	echo "Folder changed"
 	current_date=$(date +'%Y-%m-%d-%H-%M-%S')
 	 
    	num_backups=$(ls -1 $backup_dir | wc -l)   #wc to count lines 
   	if [ $num_backups -ge $max_backups ]; then   #num of backups check
      		oldest_backup=$(ls -1t $backup_dir | tail -1)    
      	#1 to list 1 directory per line,and t sort the files by modification time with most recent files first
     	#tail -1 takes the output before pip and returns the last line, so oldest backup in our file.
     	 	rm -rf $backup_dir/$oldest_backup  #f to remove without prompting for confirmation (forcefully) 
    	fi
 	#echo $current_date
	mkdir -p $backup_dir  #create backup directory if it doesnt exist
 	mkdir $backup_dir/$current_date
	cp -r $source_dir $backup_dir/$current_date
 	
 
fi
cat directory-info.new.txt > directory-info.last.txt         #replacing content to update info.last

done
 
