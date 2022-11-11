ROOT_PATH=~/Documents/LAB/Light\ Modules/
MGNL_MODULE_PATH=~/Documents/LAB/Magnolia/light-modules/

echo "What is the name of your module?"
read MODULE_NAME

ln -s $ROOT_PATH/$MODULE_NAME $MGNL_MODULE_PATH/$MODULE_NAME
echo "You're all set!"