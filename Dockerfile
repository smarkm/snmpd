FROM ubuntu
RUN apt-get update
RUN apt-get -y install snmpd snmp
RUN apt-get -y install busybox
COPY snmpd.conf /etc/snmp/
EXPOSE 161/udp 161
CMD ["snmpd", "-f", "-c", "/etc/snmp/snmpd.conf" ]