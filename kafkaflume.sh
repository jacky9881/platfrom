
#启动Zookeeper
/opt/kafka_2.11-2.0.0/bin/zookeeper-server-start.sh -daemon config/zookeeper.properties
#启动Kafka
/opt/kafka_2.11-2.0.0/bin/kafka-server-start.sh -daemon config/server.properties
#创建Kafka Topic
/opt/kafka_2.11-2.0.0/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic testTopic 
#启动消费Topic
/opt/kafka_2.11-2.0.0/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic testTopic --from-beginning
#启动Flume
/opt/apache-flume-1.8.0-bin/bin/flume-ng agent -n docker -c conf -f conf/kafka-example.conf -Dflume.root.logger=INFO,console



