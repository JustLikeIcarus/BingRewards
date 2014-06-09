#!/bin/bash

function usage() {
    echo `basename $0` "%a %p %r %P %l %i 'status_type'"
    echo "see config.xml for details"
}

if [ $# -ne 7 ] ; then
    usage
    exit 1
fi

logFile="`dirname $0`/log.log"

account=$1
points=$2
retries=$3
totalPoints=$4
lifeCredits=$5
ifStatement="$6"
statusReached="$7"

echo "statusReached = $statusReached, account = $account, points = $points, retries = $retries, totalPoints = $totalPoints, lifeCredits = $lifeCredits, ifStatement = '$ifStatement'"
echo "statusReached = $statusReached, account = $account, points = $points, retries = $retries, totalPoints = $totalPoints, lifeCredits = $lifeCredits, ifStatement = '$ifStatement'" >> "$logFile"
