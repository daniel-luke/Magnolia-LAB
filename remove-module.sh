ROOT_PATH=~/Documents/LAB/Light\ Modules/
MGNL_MODULE_PATH=~/Documents/LAB/Magnolia/light-modules/

echo "What is the name of the module you'd like to remove?"
read MODULE_NAME

rm -rf $MGNL_MODULE_PATH/$MODULE_NAME
echo "Removed symlink."

rm -rf $ROOT_PATH/$MODULE_NAME
echo "Removed the module."