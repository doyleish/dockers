FROM openjdk:18-slim

EXPOSE 25565/tcp

RUN mkdir -p /minecraft

CMD cd /minecraft && java -Xmx4096M -Xms4096M -Dfml.readTimeout=90 -Dfml.ignorePatchDiscrepancies=true -jar server.jar nogui
