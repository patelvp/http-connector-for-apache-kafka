# temp container to build using gradle
#FROM gradle:8.1.1-jdk AS TEMP_BUILD_IMAGE
#ENV APP_HOME=/usr/app/
#WORKDIR $APP_HOME
#COPY build.gradle settings.gradle $APP_HOME
#
#COPY gradle $APP_HOME/gradle
#COPY --chown=gradle:gradle . /home/gradle/src
#USER root
#RUN chown -R gradle /home/gradle/src
#
#COPY . .
#
#RUN gradle clean build
#
#RUN gradle jar
#
#RUN unzip $APP_HOMEbuild/libs/distributions/http-connector-for-apache-kafka-0.7.0-SNAPSHOT.zip

# Run gradle build
# A zip will be created in build/distributions
# unzip the zip before building this image
# actual container
FROM confluentinc/cp-kafka-connect-base

COPY build/distributions/http-connector-for-apache-kafka-0.7.0-SNAPSHOT /usr/share/java

#USER root
