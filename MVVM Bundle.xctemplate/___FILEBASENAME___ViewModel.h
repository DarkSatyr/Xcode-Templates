//___FILEHEADER___

@protocol ViewModelSubscriptionHelper;
@class ___VARIABLE_interactorType:identifier___;

NS_ASSUME_NONNULL_BEGIN

@interface ___FILEBASENAMEASIDENTIFIER___ : NSObject

- (instancetype)initWithInteractor:(___VARIABLE_interactorType:identifier___ *)interactor;
- (instancetype)init NS_UNAVAILABLE;

@property (nonatomic) RACChannel *loading;
@property (nonatomic) RACSubject *errors;

@end

NS_ASSUME_NONNULL_END
