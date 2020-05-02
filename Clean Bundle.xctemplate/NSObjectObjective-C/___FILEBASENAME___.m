//___FILEHEADER___

#import "___FILEBASENAME___Interactor.h"
#import "___FILEBASENAME___Repository.h"

@interface ___FILEBASENAME___Interactor ()

@property (nonatomic) ___FILEBASENAME___Repository *repository;

@end

@implementation ___FILEBASENAME___Interactor

- (instancetype)initWithRepository:(___FILEBASENAME___Repository *)repository {

    self = [super init];
    if (self != nil) {
        _repository = repository;
    }
    return self;
}

@end
