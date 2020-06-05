#!/bin/bash
for namespace in `ls`
do
	if [ -d "$namespace" ];then
		echo $namespace
	fi
done
