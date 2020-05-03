//___FILEHEADER___

#import "___FILEBASENAME___ViewController.h"
#import "___FILEBASENAME___ViewModel.h"
#import "ViewModelSubscriptionHelper.h"
#import "CEXMessageBanner.h"

@interface ___FILEBASENAMEASIDENTIFIER___ViewController ()

@end

@implementation ___FILEBASENAMEASIDENTIFIER___ViewController

+ (___FILEBASENAMEASIDENTIFIER___ViewController *)get___FILEBASENAMEASIDENTIFIER___ViewController {

    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"___FILEBASENAMEASIDENTIFIER___ViewController" bundle:nil];
    ___FILEBASENAMEASIDENTIFIER___ViewController *controller = [sb instantiateInitialViewController];
    return controller;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Subscription Listener

- (void)setSubscriptionHelper:(id<ViewModelSubscriptionHelper>)subscriptionHelper {
    
    if (_subscriptionHelper != subscriptionHelper) {
        _subscriptionHelper = subscriptionHelper;
        [self addSubscriptionListener:_subscriptionHelper];
    }
}

- (void)addSubscriptionListener:(id<ViewModelSubscriptionHelper>)helper {
    
    @weakify(self);
    [helper.subscriptionSignal subscribeNext:^(id  _Nullable x) {
        @strongify_r(self);
        [self subscribe];
    }];
}

- (void)subscribe {
    
    @weakify(self);
    RACSignal *unsubscriptionSignal = self.subscriptionHelper.unsubscriptionSignal;
    
    [self subscribeLoadingAndErrors];
}

- (void)subscribeLoadingAndErrors {

    @weakify(self);
    RACSignal *unsubscriptionSignal = self.subscriptionHelper.unsubscriptionSignal;
    RAC(self, cex_loading) = [[[self.viewModel.loading.followingTerminal deliverOnMainThread]
        deliverOnMainThread]
        takeUntil:unsubscriptionSignal];

    [[[self.viewModel.errors
        deliverOnMainThread]
        takeUntil:unsubscriptionSignal]
        subscribeNext:^(NSError *error) {
            @strongify_r(self);
            [CEXMessageBanner showErrorBannerWithText:error.localizedDescription.localized];
        }];
}

@end

