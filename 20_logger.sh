#!/bin/bash 
debug=2
str="string information"

info() {
	test $debug -gt 0 && echo "A little data"
	test $debug -gt 0 && echo "$str"
}

debug() {
	test $debug -gt 1 && echo "Some more datata"
	test $debug -gt 1 && echo "$str"
}

error() {
	test $debug -gt 2 && echo "Even some more data"
	test $debug -gt 2 && echo "$str"
}
