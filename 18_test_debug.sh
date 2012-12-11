#!/bin/bash 
test $debug -eq 1 && {
	echo some_debug_output
	echo some_more_debug_output
}

[ $debug -eq 1 ] && {
	echo some_debug_output
	echo some_more_debug_output
}
