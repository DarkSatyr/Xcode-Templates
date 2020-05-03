
#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@property (nonatomic) ___VARIABLE_interactorType:identifier___ *interactor;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

- (instancetype)initWithInteractor:(___VARIABLE_interactorType:identifier___ *)interactor {
    
    self = [super init];
    if (self != nil) {
        _interactor = interactor;
    }
    return self;
}

- (void)subscribe {
    
    @weakify(self);
}

@synthesize loading = _loading;
- (RACChannel *)loading {

    if (_loading == nil) {
        _loading = [[RACChannel alloc] init];
    }
    return _loading;
}

@synthesize errors = _errors;
- (RACSubject *)errors {

    if (_errors == nil) {
        _errors = [RACSubject subject];
    }
    return _errors;
}

@end
