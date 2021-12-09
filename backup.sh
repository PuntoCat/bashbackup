users=/home/users
tmp=/home/tmp/backup

#Check if directory exists, and creates if not.

if [ ! -d "$HOME/tmp/backup" ] then
mkdir -p "$HOME/tmp/backup
fi

for file in $(find $users -printf "%P\n") ; do
        if [ -a $tmp/$file ] ; then

                if [ $user/$file -nt $tmp/$file ] ; then
                echo "Newer file dectected copying...."
                cp -r $user/$file $tmp/$file
                else
                echo "File $file exists, skipping."
                fi
        else
        echo "$file is being copied over to $dest"
        cp -r $users/$file $tmp/$file
        fi
done
