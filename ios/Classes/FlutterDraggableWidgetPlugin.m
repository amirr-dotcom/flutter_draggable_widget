#import "FlutterDraggableWidgetPlugin.h"
#if __has_include(<flutter_draggable_widget/flutter_draggable_widget-Swift.h>)
#import <flutter_draggable_widget/flutter_draggable_widget-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_draggable_widget-Swift.h"
#endif

@implementation FlutterDraggableWidgetPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterDraggableWidgetPlugin registerWithRegistrar:registrar];
}
@end
