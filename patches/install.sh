echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic frameworks/av system/core system/keymaster system/netd"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/vernee/apollo_lite/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
