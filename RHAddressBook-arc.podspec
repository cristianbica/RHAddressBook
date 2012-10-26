Pod::Spec.new do |s|
  s.name         = "RHAddressBook"
  s.version      = "0.0.1"
  s.summary      = "A Cocoa / Objective-C library for interfacing with the iOS AddressBook that also adds geocoding support."
  s.homepage     = "https://github.com/heardrwt/RHAddressBook"
  s.license      = { :type => 'Modified BSD License', :file => 'LICENSE' }
  s.author       = { "Richard Heard" => "" }
  s.source       = { :git => "https://github.com/cristianbica/RHAddressBook.git", :branch => "master" }
  s.platform     = :ios, '4.0'
  s.source_files = 'build-arc/include/RHAddressBook/*.h', 'build-arc/include/RHAddressBook/Private/*.h'
  s.preserve_paths = 'build-arc/libRHAddressBook.a'
  s.framework  = 'CoreLocation', 'AddressBook', 'Foundation'
  s.library   = 'RHAddressBook'
  s.xcconfig  =  { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/RHAddressBook/build-arc"' }
  s.requires_arc = true
end
