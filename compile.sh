if  [ -z "$TOYGENERATORPATH" -o -z "$KINFIT2PATH" ];
then
    echo "Environment not initialized "
else
    echo "removing old files"
    rm -f libHHToyGenerator.so
    
    echo "creating shared library"
    g++  -fPIC -shared src/*.cpp `root-config --cflags --glibs` -I ./include -I $KINFIT2PATH/include -o libHToyGenertor.so
    echo "creating executable"
    #g++ examples/fitSingleEvent2DKinFit.C `root-config --cflags --glibs` \
    #-I $TOYGENERATORPATH/include -L $TOYGENERATORPATH -lHHToyGenerator \
    #-I $KINFIT2PATH/include -L $KINFIT2PATH -lHHKinFit2 \ 
    #-o fitSingleEvent2DKinFit

fi

