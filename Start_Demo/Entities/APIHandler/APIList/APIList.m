//
//  APIList.m
//

#import "APIList.h"

@implementation APIList

static APIList *apiListObj = nil;

// Get the shared instance and create it if necessary.
+ (APIList *)sharedAPIList {
    if (apiListObj == nil) {
        apiListObj = [[super allocWithZone:NULL] init];
    }
    return apiListObj;
}

- (id)init {
    if (self = [super init]) {
        // your custom initialization
    }
    return self;
}
- (void)API_sendLoginDetails: (NSMutableDictionary *)dict ShowLoader: (BOOL)loader showOverlay: (BOOL)overlay completion: (FetchAllRecord)completionBlock {
    [self callApiPostWithRequest:g_Request_Login Dictionary:dict showLoader:loader showOverlay:overlay completion:^(BOOL success, id responceData, NSMutableArray *arrShare) {
        completionBlock(success, responceData, arrShare);
    }];
}

@end
