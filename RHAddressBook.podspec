Pod::Spec.new do |s|
  s.name         = "RHAddressBook"
  s.version      = "0.0.1"
  s.summary      = "A Cocoa / Objective-C library for interfacing with the iOS AddressBook that also adds geocoding support."
  s.homepage     = "https://github.com/heardrwt/RHAddressBook"
  s.license      = { :type => 'Modified BSD License', :file => 'LICENSE' }
  s.author       = { "Richard Heard" => "" }
  s.source       = { :git => "https://github.com/cristianbica/RHAddressBook.git", :commit => "18ae164f1ed999c408b8d40ee3588a2ee6608203" }
  s.platform     = :ios, '4.0'
  s.source_files = 'build/include/RHAddressBook/*.h', 'build/include/RHAddressBook/Private/*.h'
  s.preserve_paths = 'build/libRHAddressBook.a'
  s.framework  = 'CoreLocation', 'AddressBook', 'Foundation'
  s.library   = 'RHAddressBook'
  s.xcconfig  =  { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/RHAddressBook/build"' }

  #s.requires_arc = true
end
