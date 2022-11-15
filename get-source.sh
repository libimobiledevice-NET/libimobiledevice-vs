git clone --single-branch --branch msvc/master https://github.com/libimobiledevice-NET/libplist
git clone --single-branch --branch msvc/master https://github.com/libimobiledevice-NET/libusbmuxd
git clone --single-branch --branch msvc/master https://github.com/libimobiledevice-NET/libimobiledevice
git clone --single-branch --branch msvc/master https://github.com/libimobiledevice-NET/libideviceactivation
git clone --single-branch --branch msvc/master https://github.com/libimobiledevice-NET/ideviceinstaller
git clone --single-branch --branch msvc/master https://github.com/libimobiledevice-NET/libirecovery
git clone --single-branch --branch msvc/master https://github.com/libimobiledevice-NET/idevicerestore
git clone --single-branch --branch msvc/master https://github.com/libimobiledevice-NET/ios-webkit-debug-proxy
git clone --single-branch --branch msvc/master https://github.com/libimobiledevice-NET/libimobiledevice-glue

# git -C is not available on CentOS 7
if [ -f /etc/redhat-release ] && [ $(rpm -q --queryformat '%{VERSION}' centos-release) == "7" ]
then
    exit 0
fi

echo "libplist revision:"
git -C libplist rev-parse HEAD

echo "libimobiledevice-glue revision:"
git -C libimobiledevice-glue rev-parse HEAD

echo "libusbmxud revision:"
git -C libusbmuxd rev-parse HEAD

echo "libimobiledevice revision:"
git -C libimobiledevice rev-parse HEAD

echo "libideviceactivation revision:"
git -C libideviceactivation rev-parse HEAD

echo "ideviceinstaller revision:"
git -C ideviceinstaller rev-parse HEAD

echo "libirecovery revision:"
git -C libirecovery rev-parse HEAD

echo "idevicerestore revision:"
git -C idevicerestore rev-parse HEAD

echo "ios-webkit-debug-proxy revision:"
git -C ios-webkit-debug-proxy rev-parse HEAD
