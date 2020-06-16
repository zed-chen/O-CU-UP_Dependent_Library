##################### ########
#copyright :ict 2019.06.27####
##############################
#!/bin/bash

path=`pwd`
cd make_config
if [ $1 = "cuup" ]
then
	make -j8 CuUpApp
	sleep 1
	cd $path/target/
	if [ -f CuUpApp ]
	then 
		cp CuUpApp $path/debug/CUUP/app/
	else 
		echo " make CUUP is ERROR"
	fi 
elif [ $1 = "clean" ]
then
	make clean
fi

