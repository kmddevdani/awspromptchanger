#!/bin/bash

# This script installs and updates the aws prompt changer
# what it does:
# requirements:
#
CHANGECOMMANDPROMPTVERSION="1"

# check if new install script version is available
COMMANDPROMPTVERSIONONSERVER=$(curl https://raw.githubusercontent.com/kmddevdani/awspromptchanger/master/version)

echo "Version on server: $COMMANDPROMPTVERSIONONSERVER. Local version: $CHANGECOMMANDPROMPTVERSION."


# determine installation location, eventually create folder
# for now, installation location ist statically set to /usr/local/bin

# download the prompt changing script to the right location, preferably via git
# sudo curl -o /usr/local/bin/changeCommandPrompt.sh https://raw.githubusercontent.com/kmddevdani/awspromptchanger/master/bin/changeCommandPrompt.sh
mkdir ~/bin
curl -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/kmddevdani/awspromptchanger/master/bin/changeCommandPrompt.sh > ~/bin/changeCommandPrompt.sh
chmod +x ~/bin/changeCommandPrompt.sh

# execute the prompt changing script
sudo ~/bin/changeCommandPrompt.sh

# install as cron job
# omitted for now