___IMPORTHEADER_cocoaTouchSubclass___

@protocol ViewModelSubscriptionHelper;
@class <#PLACE_HOLDER#>;

NS_ASSUME_NONNULL_BEGIN

@interface ___FILEBASENAMEASIDENTIFIER___ : ___VARIABLE_cocoaTouchSubclass___

- (instancetype)initWithInteractor:(<#PLACE_HOLDER#> *)interactor;
- (instancetype)init NS_UNAVAILABLE;

@property (nonatomic) RACChannel *loading;
@property (nonatomic) RACSubject *errors;

@end

NS_ASSUME_NONNULL_END
