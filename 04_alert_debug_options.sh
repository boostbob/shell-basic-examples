alert() {
	local RET_CODE=$?

	if [ -z "$DEBUG" ] || [ "DEBUG" -eq 0 ] ; then
		return
	fi
}
