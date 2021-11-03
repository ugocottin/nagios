FROM jasonrivers/nagios

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
	apt-get -qq install snmp-mibs-downloader

RUN download-mibs

RUN wget http://pastebin.com/raw.php?i=p3QyuXzZ -O /usr/share/snmp/mibs/ietf/SNMPv2-PDU