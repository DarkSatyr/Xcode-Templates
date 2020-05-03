//___FILEHEADER___

#import <UIKit/UIKit.h>

@class ___FILEBASENAME___ViewModel;

@interface ___FILEBASENAMEASIDENTIFIER___ViewController : UIViewController

+ (___FILEBASENAMEASIDENTIFIER___ViewController *)get___FILEBASENAMEASIDENTIFIER___ViewController;
- (instancetype)init NS_UNAVAILABLE;

@property (nonatomic) ___FILEBASENAME___ViewModel *viewModel;
@property (nonatomic) id<ViewModelSubscriptionHelper> subscriptionHelper;

@end
