
#import <Foundation/Foundation.h>
#include <string>
#import <CoreGraphics/CoreGraphics.h>
@interface IPhoneUtil : NSObject

+ (NSString*) toNSString:(std::string&) s;
+ (NSString*) getAppVersion;
+ (NSString*) getBuildVersion;
+ (int) getTouchNum:(NSSet*)touches;
+ (CGRect) getScreenRect;
@end

