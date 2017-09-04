# This file defines helpers for dealing with associative arrays
# in bash
#
# References:
# - http://www.artificialworlds.net/blog/2012/10/17/bash-associative-array-examples/

# This is a function to print out an associative array.
# It has been checked to handle associative arrays which have spaces
# in the keys or values correctly.
function assoc_print() {
	local __assoc_name=$1
	eval 'local keys=("${!'$__assoc_name'[@]}")'
	local len
	eval 'local len=${#'$__assoc_name'[@]}'
	local i
	for (( i=0; $i < $len; i+=1 ))
	do
		local key=${keys[$i]}
		eval local val=$\{$__assoc_name[\"$key\"]\}
		echo "$key --> $val"
	done
}

# This is a function that creates a new global associative array in a variable
# name of your choosing.
# Note the -g flag which makes a global associative array. It is necessary,
# otherwise the associative array which is created will be local.
function assoc_create() {
	local __assoc_name=$1
	eval declare -gA $__assoc_name
}

function assoc_set() {
	local __var_name=$1
	local key=$2
	local value=$3
	eval $__var_name["$key"]="$value"
}

function assoc_get() {
	local __var_name=$1
	local __obj_name=$2
	local attr=$3
	eval $__var_name=$\{$__obj_name[\"$attr\"]\}
}
