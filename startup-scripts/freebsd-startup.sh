#!/bin/sh
# $FreeBSD$

# PROVIDE: downtimed
# REQUIRE: LOGIN syslogd
# KEYWORD: shutdown

# This file should be installed as /usr/local/etc/rc.d/downtimed
#
# Define downtimed_* variables in one of these files:
#	/etc/rc.conf
#	/etc/rc.conf.local
#	/etc/rc.conf.d/downtimed
#
# Add the following line to enable:
#	downtimed_enable="YES"
#
# Add the following line to change the default options, see downtimed(8):
#	downtimed_flags="<set as needed>"
#
# DO NOT CHANGE THE DEFAULT VALUES BELOW

. /etc/rc.subr

name="downtimed"
rcvar=`set_rcvar`

command="/usr/local/sbin/${name}"
pidfile="/var/run/${name}.pid"

load_rc_config "$name"

: ${downtimed_enable="NO"}

run_rc_command "$1"
