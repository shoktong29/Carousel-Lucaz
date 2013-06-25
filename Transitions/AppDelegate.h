//
//  AppDelegate.h
//  Transitions
//
//  Created by Martin on 6/25/13.
//  Copyright (c) 2013 Martin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
- (void)transitionToViewController:(UIViewController *)viewController withTransition:(UIViewAnimationOptions)transition;
@end
