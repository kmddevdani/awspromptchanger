# awspromptchanger

Changes the prompt of an AWS machine to the value which is set as its tag name.

## Requirements

  * script needs root permissions
  * sudo
  * machine needs access to tag names via IAM

## Install & run:

This command needs to be run on the AWS machine:

```
sudo curl -H 'Cache-Control: no-cache' -o installChangeCommandPrompt.sh https://raw.githubusercontent.com/kmddevdani/awspromptchanger/master/bin/install.sh && sudo chmod +x installChangeCommandPrompt.sh && sudo ./installChangeCommandPrompt.sh
```