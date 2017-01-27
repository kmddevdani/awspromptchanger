#!/bin/bash

# This script installs and updates the aws prompt changer
# what it does:
# requirements:
#

# current version number of this install script
CHANGECOMMANDPROMPTVERSION="2"

# check if new install script version is available
echo "Checking for new version of the installer on the server..."
COMMANDPROMPTVERSIONONSERVER=$(curl -s https://raw.githubusercontent.com/kmddevdani/awspromptchanger/master/version)

echo "Version on server: $COMMANDPROMPTVERSIONONSERVER. Local version: $CHANGECOMMANDPROMPTVERSION."
if [ "$CHANGECOMMANDPROMPTVERSION" == "$COMMANDPROMPTVERSIONONSERVER" ] 
then
	echo "This script is up to date."
else
	echo "The server contains a new version of this script. Trying to update."
	curl -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/kmddevdani/awspromptchanger/master/bin/install.sh > installChangeCommandPrompt.sh 
	chmod +x installChangeCommandPrompt.sh
fi

# determine installation location, eventually create folder
# for now, installation location ist statically set to /usr/local/bin

# download the prompt changing script to the right location, preferably via git
# sudo curl -o /usr/local/bin/changeCommandPrompt.sh https://raw.githubusercontent.com/kmddevdani/awspromptchanger/master/bin/changeCommandPrompt.sh
mkdir ~/bin
curl -s -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/kmddevdani/awspromptchanger/master/bin/changeCommandPrompt.sh > ~/bin/changeCommandPrompt.sh
chmod +x ~/bin/changeCommandPrompt.sh

# execute the prompt changing script
sudo ~/bin/changeCommandPrompt.sh

# install as cron job
# omitted for now