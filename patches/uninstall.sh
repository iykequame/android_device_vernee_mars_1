echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic frameworks/av system/core system/keymaster system/netd"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Reverting $dir patches..."
	#git apply --reverse $rootdirectory/device/vernee/apollo_lite/patches/$dir/*.patch
	git reset --hard
	git clean -f -d
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
