export FOLDER=/home/ec2-user/environment/bot

if [ -d $FOLDER ]
then
 rm -rf $FOLDER
fi

mkdir -p $FOLDER
