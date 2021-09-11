FROM alpine:latest

EXPOSE 139/tcp
EXPOSE 445/tcp

WORKDIR /root

RUN mkdir -p /mnt/store0

COPY passwordfile /root/passwordfile

RUN apk --no-cache --no-progress upgrade\
    && apk --no-cache --no-progress add samba shadow

RUN useradd ryan\
    && PWD=$(cat passwordfile)\
    && echo -e "$PWD\n$PWD" | passwd ryan\
    && echo -e "$PWD\n$PWD" | smbpasswd -a ryan\
    && > passwordfile 

CMD smbd -F -S --no-process-group
