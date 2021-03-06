#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: peercoind.sh,v 1.1 2014/09/22 11:21:19 othyro Exp $
#

# PROVIDE: ppcoind
# REQUIRE: DAEMON LOGIN wscons
# KEYWORD: shutdown

if [ -f /etc/rc.subr ]; then
	. /etc/rc.subr
fi

name="ppcoind"
rcvar=$name
command="@PREFIX@/sbin/ppcoind"
pidfile="@VARBASE@/run/ppcoind.pid"
required_directory="@VARBASE@/peercoin"
command_args="-daemon -conf=@PREFIX@/etc/peercoin.conf -pid=${pidfile} -datadir=${required_directory}"

if [ -f /etc/rc.subr ]; then
	load_rc_config $name
	run_rc_command "$1"
else
	echo -n " ${name}"
	${command} ${peercoin_flags} ${command_args}
fi
