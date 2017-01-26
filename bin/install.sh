#!/bin/bash

# This script installs and updates the aws prompt changer
# what it does:
# requirements:
#


# determine installation location, eventually create folder
# for now, installation location ist statically set to /usr/local/bin

# download the prompt changing script to the right location, preferably via git
sudo curl -o /usr/local/bin/changeCommandPrompt.sh https://raw.githubusercontent.com/kmddevdani/awspromptchanger/master/bin/changeCommandPrompt.sh
sudo chmod +x /usr/local/bin/installChangeCommandPrompt.sh

# execute the prompt changing script
sudo /usr/local/bin/changeCommandPrompt.sh

# install as cron job
# omitted for now