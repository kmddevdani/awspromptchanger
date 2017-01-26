# awspromptchanger

Changes the prompt of an AWS machine to the value which is set as its tag name.

## Requirements

  * script needs root permissions
  * sudo
  * machine needs access to tag names via IAM

## Install & run:

This command needs to be run on the AWS machine:

```
curl https://raw.githubusercontent.com/kmddevdani/awspromptchanger/master/bin/install.sh > installChangeCommandPrompt.sh && chmod +x installChangeCommandPrompt.sh && ./installChangeCommandPrompt.sh
```