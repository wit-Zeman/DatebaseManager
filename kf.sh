#! /bin/bash

case $1 in
"start"){
        for i in 192.168.10.102 192.168.10.103 192.168.10.104
        do
                echo " --------启动 $i Kafka-------"
                
                ssh $i "source /etc/profile ; /opt/module/kafka/bin/kafka-server-start.sh -daemon /opt/module/kafka/config/server.properties "
        done
};;
"stop"){
        for i in 192.168.10.102 192.168.10.103 192.168.10.104
        do
                echo " --------停止 $i Kafka-------"
                ssh $i " source /etc/profile ; /opt/module/kafka/bin/kafka-server-stop.sh stop"
        done
};;
esac
