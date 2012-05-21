#! /bin/sh

### BEGIN INIT INFO
# Provides:          pycomm
# Required-Start:    
# Required-Stop:
# X-Start-Before:    
# Default-Start:     2 3 4 5
# Default-Stop:      0 6
# Short-Description: Provide basic Web service to list community events.
# Description: Provide basic Web service to list community events.
### END INIT INFO

S=pycomm
USER=ygingras
PSERVE="/home/$USER/.virtualenvs/$S/bin/pserve"
PIDFILE="/var/run/$S/$S.pid"
LOGFILE="/var/log/$S/$S.log"
OPTS="--daemon --pid-file=$PIDFILE --log-file=$LOGFILE --user=$USER"

CONF="/home/$USER/$S/development.ini"

set -e

case "$1" in
  start)
        exec $PSERVE $OPTS $CONF
	;;
  stop|restart|status)
        exec $PSERVE $OPTS $CONF $1
	;;
  *)
	echo "Usage: $S {start|stop|restart|status}" >&2
	exit 1
	;;
esac

exit 0
