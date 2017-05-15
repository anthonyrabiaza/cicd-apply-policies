if [ $# -eq 0 ]
    then
        echo "No arguments supplied, please use $0 <commandFile>"
        echo "For instance $0 deploy_client_enforcement.txt"
    else
        if [ -e $ANYPOINT_USERNAME ] && [ -e $ANYPOINT_PASSWORD ] && [ -e $ANYPOINT_ENV] 
        then
            echo "Please define ANYPOINT_USERNAME, ANYPOINT_PASSWORD and ANYPOINT_ENV"
        else
            anypoint-cli < $1
        fi
fi
