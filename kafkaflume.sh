
#启动Zookeeper
/opt/kafka_2.11-2.0.0/bin/zookeeper-server-start.sh -daemon config/zookeeper.properties

#启动Kafka
/opt/kafka_2.11-2.0.0/bin/kafka-server-start.sh -daemon config/server.properties

#创建Kafka Topic
/opt/kafka_2.11-2.0.0/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic testTopic 
#查看已经创建的topic列表
#/opt/kafka_2.11-2.0.0/bin/kafka-topics.sh --list --zookeeper localhost:2181
# 查看此topic的属性
#kafka-topics.sh --describe --zookeeper localhost:2181 --topic testTopic

#启动消费Topic
＃/opt/kafka_2.11-2.0.0/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic testTopic --from-beginning
/opt/kafka_2.11-2.0.0/bin/kafka-console-consumer.sh --zookeeper localhost:2181 --topic testTopic --from-beginning

#启动Flume
/opt/apache-flume-1.8.0-bin/bin/flume-ng agent -n docker -c conf -f conf/kafka-example.conf -Dflume.root.logger=INFO,console

#启动Storm Nimbus
/opt/apache-storm-1.2.2/bin/storm nimbus

#启动Storm Supervisor
/opt/apache-storm-1.2.2/bin/storm supervisor

#启动Storm UI
/opt/apache-storm-1.2.2/bin/storm ui





