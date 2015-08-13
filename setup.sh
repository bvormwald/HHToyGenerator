if [[ -z "$TOYGENERATORPATH" ]];
then
    export TOYGENERATORPATH=$PWD
    export LD_LIBRARY_PATH=$TOYGENERATORPATH:$LD_LIBRARY_PATH
    echo "Set TOYGENERATORPATH and updated LD_LIBRARY_PATH"

    if [[ $HOST == *"naf"*  ]];
    then
        module load git
        module load root
        module load gcc
        echo "Initialized git and ROOT via module (NAF usage)"
    else
        echo "Git and ROOT not explicitly initialized (non NAF usage)"
    fi
    
else
    echo "setup already done"
fi

