module io.aiven.kafka.connect.http {
    requires org.slf4j;
    requires java.net.http;
    requires static kafka.clients;
    requires static connect.api;
}