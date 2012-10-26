#!/bin/bash
xcodebuild -project RHAddressBook.xcodeproj -target RHAddressBook -configuration Release CONFIGURATION_BUILD_DIR=./build && rm -rf build/RHAddressBook.build
