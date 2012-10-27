#!/bin/bash
rm -rf build lib lib-arc
mkdir lib lib-arc

xcodebuild -project RHAddressBook.xcodeproj -target RHAddressBook -configuration Release -sdk iphoneos -arch "armv7 armv7s" clean build
xcodebuild -project RHAddressBook.xcodeproj -target RHAddressBook -configuration Release -sdk iphonesimulator -arch "i386" clean build
lipo -create -output "lib/libRHAddressBook.a" "build/Release-iphoneos/libRHAddressBook.a" "build/Release-iphonesimulator/libRHAddressBook.a"
cp -prf build/Release-iphoneos/include lib/
rm -rf build


xcodebuild -project RHAddressBook.xcodeproj -target RHAddressBook -configuration Release -sdk iphoneos -arch "armv7 armv7s" clean build CLANG_ENABLE_OBJC_ARC=YES
xcodebuild -project RHAddressBook.xcodeproj -target RHAddressBook -configuration Release -sdk iphonesimulator -arch "i386" clean build CLANG_ENABLE_OBJC_ARC=YES
lipo -create -output "lib-arc/libRHAddressBook.a" "build/Release-iphoneos/libRHAddressBook.a" "build/Release-iphonesimulator/libRHAddressBook.a"
cp -prf build/Release-iphoneos/include lib-arc/
rm -rf build
