#local-confluent-kafka-cp-zookeeper-headless
kafka-topics --zookeeper $1:2181 --topic user-created --delete --if-exists
kafka-topics --zookeeper $1:2181 --topic product-created --delete --if-exists
kafka-topics --zookeeper $1:2181 --topic warehouse-created --delete --if-exists
kafka-topics --zookeeper $1:2181 --topic stock-updated --delete --if-exists
kafka-topics --zookeeper $1:2181 --topic user-edited --delete --if-exists

kafka-topics --zookeeper $1:2181 --topic user-created --create --partitions 3 --replication-factor 1 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic product-created --create --partitions 3 --replication-factor 1 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic warehouse-created --create --partitions 3 --replication-factor 1 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic stock-updated  --create --partitions 3 --replication-factor 1 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic user-edited --create --partitions 3 --replication-factor 1 --if-not-exists
