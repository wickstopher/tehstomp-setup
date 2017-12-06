#! /usr/bin/env bash

set -e

function do_error () (
    echo ""
    echo "*** There was a problem; did you run 'make clone' and 'make install'? ***"
    echo ""
    exit 1
)

# Builds the client and server applications
(cd tehstomp-server && make build && cd ..)|| do_error
ln -s tehstomp-server/StompBroker broker|| do_error
(cd tehstomp-client && make && cd ..) || do_error
ln -s tehstomp-client/StompClient client || do_error
ln -s tehstomp-client/Producer producer || do_error
ln -s tehstomp-client/Consumer consumer || do_error
