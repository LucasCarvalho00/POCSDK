rm -rf ./output
rm -rf ./package/CAFSDK.xcframework

xcodebuild archive -scheme CAFSDK \
-destination "generic/platform=iOS" \
-archivePath output/CAFSDK-iOS \
SKIP_INSTALL=NO \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES


xcodebuild archive -scheme CAFSDK \
-destination "generic/platform=iOS Simulator" \
-archivePath output/CAFSDK-Simulator \
SKIP_INSTALL=NO \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES



xcodebuild -create-xcframework \
-framework ./output/CAFSDK-iOS.xcarchive/Products/Library/Frameworks/CAFSDK.framework \
-framework ./output/CAFSDK-Simulator.xcarchive/Products/Library/Frameworks/CAFSDK.framework \
-output ./package/CAFSDK.xcframework
