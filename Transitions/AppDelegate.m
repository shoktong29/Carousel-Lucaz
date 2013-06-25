//
//  AppDelegate.m
//  Transitions
//
//  Created by Martin on 6/25/13.
//  Copyright (c) 2013 Martin. All rights reserved.
//

#import "AppDelegate.h"
#import "VCFactory.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    UIViewController *rootVC = [[UIViewController alloc]init];
    rootVC.view.frame = self.window.bounds;
    rootVC.view.backgroundColor = [UIColor darkGrayColor];
    [rootVC.view addSubview:[[VCFactory sharedInstance] getViewControllerWithId:typeCenter].view];
    self.window.rootViewController = rootVC;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)transitionToViewController:(UIViewController *)viewController withTransition:(UIViewAnimationOptions)transition{
    [self.window.rootViewController.view addSubview:viewController.view];
    CGRect initialPos = viewController.view.frame;
    initialPos.origin.x = 320;
    viewController.view.frame = initialPos;
    
    UIView *fromView = [[self.window.rootViewController.view subviews]objectAtIndex:0];
    [UIView animateWithDuration:0.5 animations:^{
        fromView.alpha = 0;
        CGRect tempPos = fromView.frame;
        tempPos.origin.x = -320;
        fromView.frame = tempPos;
        
        CGRect toPos = viewController.view.frame;
        toPos.origin.x = 0;
        viewController.view.frame = toPos;
    } completion:^(BOOL finished) {
        [fromView removeFromSuperview];
    }];
    
//    [UIView transitionFromView:self.window.rootViewController.view
//                        toView:viewController.view
//                      duration:0.65f
//                       options:transition
//                    completion:^(BOOL finished){
//                        [self.window.rootViewController addChildViewController:viewController];
//                    }];
}

@end
