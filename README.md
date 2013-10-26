XCUnit
======

XCtest framework a simple app.

Integration with Jenkins
====================

1) You need to have homebrew, cocoapods, xctool and iOS 7 simulator installed

    Install cocoapods -  gem install cocoapods 
    Install homebrew  - https://github.com/mxcl/homebrew/wiki/Installation
    Install xctool - brew install xctool

2) On Jenkins machine run the following command to buil, run tests and generates junit results

xctool -workspace TDD.xcworkspace -scheme TDD -sdk iphonesimulator -reporter junit:junit.xml test
