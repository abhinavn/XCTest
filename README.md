XCTest
======

This is sample XCTest framework integrated with Facebook's xctool. This a clone of https://github.com/skoirala/XCUnit


Integration with Jenkins
====================

Jenkins should be installed on a Mac. This is tested on OSX 10.9and Xcode 5.0.1 

1) You need to have homebrew, cocoapods, xctool , xcode commandline tools and iOS 7 simulator installed

    Install cocoapods -  gem install cocoapods 
    Install homebrew  - https://github.com/mxcl/homebrew/wiki/Installation
    Install xctool - brew install xctool

2) On Jenkins machine run the following command to build, run tests and generates junit results

xctool -workspace TDD.xcworkspace -scheme TDD -sdk iphonesimulator -reporter junit:/path/tocreate/junit.xml test
