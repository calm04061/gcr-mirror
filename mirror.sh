#!/bin/bash
for site in `ls`
do
	if [ -d "$site" ];then
		for namespace in `ls $site`
		do
			for image in `ls $site/$namespace`
			do
				for version in `ls $site/$namespace/$image`
				do
					echo $site/$namespace/$image:$version
					docker pull $site/$namespace/$image:$version
              				docker tag $site/$namespace/$image:$version docker.pkg.github.com/calm04061/image-mirror/$site/$namespace/$image:$version
              				docker push docker.pkg.github.com/calm04061/image-mirror/$site/$namespace/$image:$version
				done


			done
		done
	fi
done
