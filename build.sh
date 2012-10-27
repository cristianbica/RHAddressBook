#!/bin/bash
rm -rf build build-arc
mkdir build build-arc
xcodebuild -project RHAddressBook.xcodeproj -target RHAddressBook -configuration Release ARCHS="armv6 armv7 armv7s i386" CONFIGURATION_BUILD_DIR=./build && rm -rf build/RHAddressBook.build
xcodebuild -project RHAddressBook.xcodeproj -target RHAddressBook -configuration Release ARCHS="armv6 armv7 armv7s i386" CLANG_ENABLE_OBJC_ARC=YES CONFIGURATION_BUILD_DIR=./build-arc && rm -rf build/RHAddressBook.build

