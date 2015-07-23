//
//  APIList.h
//

#import <Foundation/Foundation.h>
#import "APICall.h"

typedef void(^FetchAllRecord) (BOOL success, id responceData, NSMutableArray *share);

@interface APIList : APICall

+ (APIList *)sharedAPIList;
- (void)API_sendLoginDetails: (NSMutableDictionary *)dict ShowLoader: (BOOL)loader showOverlay: (BOOL)overlay completion: (FetchAllRecord)completionBlock;
@end
