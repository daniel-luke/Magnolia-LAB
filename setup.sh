ROOT_PATH=~/Documents/LAB/
MGNL_DIR=~/Documents/LAB/Magnolia/
LM_DIR=~/Documents/LAB/Light\ Modules/

if [ -d "$MGNL_DIR" ]
then
  echo "Removing old Magnolia instance at: $MGNL_DIR"
  eval "sudo rm -rf $MGNL_DIR"
fi

if [ -d "$LM_DIR" ]
then
  echo "Removing old Light Modules directory at: $LM_DIR"
  rm -rf $LM_DIR
fi

if [ ! `command -v npm` ]
then
  echo "NPM/Node has not been installed" > errors.log
  exit 125
fi

if [ ! `command -v mgnl` ]
then
  echo "Installing Magnolia CLI.."
  eval "npm i -g @magnolia/cli"
  eval "mgnl -v"
  echo "Magnolia CLI has been installed globally.."
fi

echo "Setting up local Magnolia installation.."
cd $ROOT_PATH
mkdir "Magnolia"
cd "Magnolia"
eval "mgnl jumpstart -w magnolia-community-webapp"

cd $ROOT_PATH
echo "Creating Light Modules directory.."
mkdir "Light Modules"