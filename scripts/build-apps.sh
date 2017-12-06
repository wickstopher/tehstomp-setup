#! /usr/bin/env bash

set -e

function do_error () (
    echo ""
    echo "*** There was a problem; did you run 'make clone' and 'make install'? ***"
    echo ""
    exit 1
)

mkdir -p bin/

# Builds the client and server applications
(cd tehstomp-server && make build && cd ..)|| do_error
cp tehstomp-server/StompBroker bin/broker|| do_error
(cd tehstomp-client && make && cd ..) || do_error
cp tehstomp-client/StompClient bin/client || do_error
cp tehstomp-client/Producer bin/producer || do_error
cp tehstomp-client/Consumer bin/consumer || do_error
