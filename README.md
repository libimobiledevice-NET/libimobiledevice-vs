# Visual Studio solution & projects for libimobiledevice

The libimobiledevice project consists of multiple libraries - such as libplist, libusbmuxd
and libimobiledevice.

Each library lives in its own repository, and references the other libraries. By default,
these projects are referenced as Vcpkg packages. This provides great isolation for each library.

This setup can be cumersome when you're making changes that touch multiple libraries at once,
because you need to make a change, update the dependency, and try again.

This repository contains a Visual Studio solution and projects which allow you to build
all of libimobiledevice at once, using Visual Studio.

## Maintenance 🔧

This project is currently in maintenance mode and may not compile with the latest commit. Currently, preference is given to x86 and retargeting to VS19. Support for VS17 will be removed.

* Added libimobiledevice-glue library
* Silenced warnings and altered project settings that prevented compilation
* Win32 in Debug fully compiles as of commit [0b07001d5884365a1ace331d644e3b0249c5bc2b](https://github.com/waynebonc/libimobiledevice-vs/tree/0b07001d5884365a1ace331d644e3b0249c5bc2b)

## Getting started

You'll need [vcpkg](https://github.com/microsoft/vcpkg) to install dependencies (such as libcurl)
and a couple of repositories to configure your development environment.

To install vcpkg and the dependencies, run:

```
git clone https://github.com/microsoft/vcpkg
vcpkg\bootstrap-vcpkg.bat
vcpkg\vcpkg integrate install
vcpkg\vcpkg install libiconv:x64-windows zlib:x64-windows openssl:x64-windows dirent:x64-windows getopt:x64-windows curl:x64-windows libzip:x64-windows libxml2:x64-windows libusb:x64-windows libusb-win32:x64-windows pthreads:x64-windows readline:x64-windows pcre:x64-windows dirent
```

To compile for x86 you will also need:

```
vcpkg\vcpkg install curl:x86-windows libxml2:x86-windows getopt:x86-windows libzip:x86-windows libusb:x86-windows libusb-win32:x86-windows pcre:x86-windows readline:x86-windows
```

To get the libmobiledevice source code, run:

```
get-source.cmd
```

You can now open the `libimobiledevice-vs.sln` solution and start compiling libimobiledevice.

## Consulting, Training and Support

This repository is maintained by [Quamotion](http://quamotion.mobi). Quamotion develops test software for iOS and Android applications, based on the WebDriver protocol.

Quamotion offers various technologies related to automating iOS devices using computers running Windows or Linux.

This includes:
* The ability to remotely control iOS devices
* Extensions to libimobiledevice with support for the Instruments protocol
* Running Xcode UI Tests and Facebook WebDriverAgent tests

In certain  cases, Quamotion also offers professional services - such as consulting, training and support - related to imobiledivice-net and libimobiledevice.

Contact us at [info@quamotion.mobi](mailto:info@quamotion.mobi) for more information.
