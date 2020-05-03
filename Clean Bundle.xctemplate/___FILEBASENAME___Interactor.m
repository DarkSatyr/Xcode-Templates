//___FILEHEADER___

#import "___FILEBASENAMEASIDENTIFIER___.h"
#import "___VARIABLE_productName:identifier___Repository.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@property (nonatomic) ___VARIABLE_productName:identifier___Repository *repository;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

- (instancetype)initWithRepository:(___VARIABLE_productName:identifier___Repository *)repository {

    self = [super init];
    if (self != nil) {
        _repository = repository;
    }
    return self;
}

@end
