//
//  Singleton.h
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject {
}
@property (strong ,nonatomic) NSMutableArray *arrDATA;
@property (nonatomic) NSInteger intFlagType;

+ (Singleton *)sharedSingleton;


@end
