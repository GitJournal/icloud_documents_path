#import "IcloudDocumentsPathPlugin.h"
#if __has_include(<icloud_documents_path/icloud_documents_path-Swift.h>)
#import <icloud_documents_path/icloud_documents_path-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "icloud_documents_path-Swift.h"
#endif

@implementation IcloudDocumentsPathPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftICloudDocumentsPathPlugin registerWithRegistrar:registrar];
}
@end
