#!/bin/bash

echo $1


if [ $1 == "all" ]
  then
    list_services=$(systemctl list-units --all  | awk '{print $1}')
    count_service=$(systemctl list-units --all  | awk '{print $1}' | wc -l)

  else

    list_services=$(systemctl list-units --all | grep $1 | awk '{print $1}')
    count_service=$(systemctl list-units --all | grep $1 | awk '{print $1}' | wc -l)

fi


if [ $count_service == 0 ]
then
    echo "service not found"
else
    echo "$count_service service is exist"

    for service in ${list_services[@]}; 
      do
        status=$(systemctl is-active $service)
        BLUE='\033[1;34m'
        NC='\033[0m' # No Color
        if [ $status = 'active' ]
          then
            GREEN='\033[0;32m'
            echo -e "status ${BLUE}$service${NC} is : ${GREEN}$status${NC}"
          else
            RED='\033[0;31m'
            echo -e "status ${BLUE}$service${NC} is : ${RED}$status${NC}"
          fi
      done
fi
