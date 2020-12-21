#!/bin/bash

# Needed start script change - otherwise cloudconductor wouldn't stay active through docker exec
sed -i 's/pid=\$(su -m -c "java -XX:MaxPermSize=128m -Xmx\$maxmem -XX:OnOutOfMemoryError='\''kill -9 %p'\'' -DstartupMode=prod -Dcom\.sun\.management\.jmxremote -Dcom\.sun\.management\.jmxremote\.port=8091 -Dcom\.sun\.management\.jmxremote\.authenticate=false -Dcom\.sun\.management\.jmxremote\.ssl=false -Dhazelcast\.jmx=true \$JAVAOPTS -jar \$jarfile \$JAVAARGS > \/dev\/null & echo \\\$! " "\$runuser")/pid=\$(su -m -c "java -XX:MaxPermSize=128m -Xmx\$maxmem -XX:OnOutOfMemoryError='\''kill -9 %p'\'' -DstartupMode=prod -Dcom\.sun\.management\.jmxremote -Dcom\.sun\.management\.jmxremote\.port=8091 -Dcom\.sun\.management\.jmxremote\.authenticate=false -Dcom\.sun\.management\.jmxremote\.ssl=false -Dhazelcast\.jmx=true \$JAVAOPTS -jar \$jarfile \$JAVAARGS " "\$runuser")/g' /etc/init.d/cloudconductor

# Lazy bypass a check if the database is ready before service start
# Would be better to check the database connection (needs to be done)
sleep 20

# Service start
/etc/init.d/cloudconductor start
