#!/bin/bash

#Move File to correct directory
mv ls.sh /etc/profile.d/ls.sh
    
#File Permission Update
chmod 700 /etc/profile.d/ls.sh
    
echo "Script is complete"