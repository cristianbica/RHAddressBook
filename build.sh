#!/bin/bash
rm -rf build
mkdir build
xcodebuild -project RHAddressBook.xcodeproj -target RHAddressBook -configuration Release CONFIGURATION_BUILD_DIR=./build && rm -rf build/RHAddressBook.build
#xcodebuild -project RHAddressBook.xcodeproj -target RHAddressBook -configuration Release CLANG_ENABLE_OBJC_ARC=YES CONFIGURATION_BUILD_DIR=./build && rm -rf build/RHAddressBook.build
