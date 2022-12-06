FROM ubuntu:latest

#RUN apt-get update
#RUN apt-get install -y -qq default-jre

# Install OpenJDK-8
RUN apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    apt-get install -y ant && \
    apt-get clean;
    
# Fix certificate issues
RUN apt-get install ca-certificates-java && \
    apt-get clean && \
    update-ca-certificates -f;

COPY cliente.sh /

CMD sh "/cliente.sh"
