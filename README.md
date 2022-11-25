# ls-after-cd
Listing the directory contents automatically after changing directory via a Linux Function.

## Requirements
* Virtual Machine
* Linux OS: Redhat or CentOS

## Implementation Steps
### 1. Clone the Git Repository

      sudo yum install git -y 
      cd /home
      git clone https://github.com/BJWRD/ls-after-cd
      cd ls-after-cd

### 2. Change file permissions

      chmod 700 setup.sh
      
### 3. Script execution

      ./setup.sh
      
Or alternatively, if you would like to make the update manually enter the following -

      vi /etc/profile.d/ls.sh
---

      #!/bin/bash
      
      # ls after cd
      function cd {
        if [ -z "$1" ]; then
          builtin cd
        else
          builtin cd "$1"
        fi
        if [ $? -eq 0 ]; then
          ls
        fi
      }

## Verification Steps 
To verify that the Implementation steps have worked as expected, *cd* to another directory from the terminal -
    
    cd /usr
    
<img width="564" alt="image" src="https://user-images.githubusercontent.com/83971386/203978767-b9c11150-55ea-473d-81fb-97d38dbfec53.png">
      

