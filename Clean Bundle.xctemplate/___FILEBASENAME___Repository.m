//___FILEHEADER___

#import "___FILEBASENAME___.h"
#import "___VARIABLE_productName:identifier___NetworkService.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@property (nonatomic) ___VARIABLE_productName:identifier___NetworkService *networkService;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

- (instancetype)initWithNetworkService:(___VARIABLE_productName:identifier___NetworkService *)networkService {

    self = [super init];
    if (self != nil) {
        _networkService = networkService;
    }
    return self;
}

@end
