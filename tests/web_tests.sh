#!/bin/bash
sleep 1
echo Executing web tests
for i in {1..3}
do
    OUTPUT=`curl -s http://docker.local/sugar/$i.php | grep ok | wc -l`
    if [ $OUTPUT != '1' ]
    then
        echo Error for script $i.php
        exit 1
    else
        echo Script $i.php executed successfully
    fi
done