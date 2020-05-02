//___FILEHEADER___

#import "___FILEBASENAME___.h"
#import "___FILEBASENAME___NetworkService.h"

@interface ___FILEBASENAME___ ()

@property (nonatomic) ___FILEBASENAME___NetworkService *networkService;

@end

@implementation ___FILEBASENAME___

- (instancetype)initWithNetworkService:(___FILEBASENAME___NetworkService *)networkService {

    self = [super init];
    if (self != nil) {
        _networkService = networkService;
    }
    return self;
}

@end
