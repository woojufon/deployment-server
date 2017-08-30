#!/bin/sh
PID=`ps ax | grep james | grep java | awk '{print $1;}'`
kill -9 $PID

