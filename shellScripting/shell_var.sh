#!/bin/bash
global_var="This is global variable."

function scope(){
	local local_var="this is a local variable"
	var="This is a variable"
	echo -e "Inside Function:\nGlobal: $global_var\nLocal: $local_var\nVar Inside Function: $var"
}

scope
echo -e "Global: $global_var\nLocal: $local_var\nVar Inside Function: $var"
