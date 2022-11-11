ROOT_PATH=~/Documents/LAB/Light\ Modules/
MGNL_MODULE_PATH=~/Documents/LAB/Magnolia/light-modules/

echo "What is the name of your module?"
read MODULE_NAME

cd $ROOT_PATH
mgnl create-light-module $MODULE_NAME
echo "Linking light module to Magnolia"
ln -s $ROOT_PATH/$MODULE_NAME $MGNL_MODULE_PATH/$MODULE_NAME
echo "You're all set!"