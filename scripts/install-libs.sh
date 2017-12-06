#! /usr/bin/env bash

function do_error () (
	echo ""
	echo "*** There was a problem; did you run 'make clone'? ***"
	echo ""
	exit 1
)

# Install the necessary libraries
(cd tx-events && make install && cd ..) || do_error
(cd tehstomp-lib && make install && cd ..) || do_error
