#!/bin/bash -u

# This example shows how to check if a glob patten has matches.
# This uses the 'compgen' shell builtin.
#
# References:
# - http://stackoverflow.com/questions/2937407/test-whether-a-glob-has-any-matches-in-bash

source ../../includes/common.bash

if compgen -G "/etc/markveltzer*" > /dev/null
then
	echo "problem"
fi

if ! compgen -G "/etc/ssh*" > /dev/null
then
	echo "problem"
fi
