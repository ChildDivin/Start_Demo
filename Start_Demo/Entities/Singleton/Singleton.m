//
//  Singleton.m
//

#import "Singleton.h"

@implementation Singleton
@synthesize arrDATA,intFlagType;

static Singleton *singletonObj = nil;

// Get the shared instance and create it if necessary.
+ (Singleton *)sharedSingleton {
    if (singletonObj == nil) {
        singletonObj = [[super allocWithZone:NULL] init];
    }
    return singletonObj;
}

@end