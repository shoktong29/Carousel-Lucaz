//
//  RightVC.m
//  Transitions
//
//  Created by Martin on 6/25/13.
//  Copyright (c) 2013 Martin. All rights reserved.
//

#import "RightVC.h"
#import "AppDelegate.h"
#import "VCFactory.h"

@implementation RightVC

- (void)loadView{
    UIView *view = [[UIView alloc] initWithFrame:CGRectZero];
    view.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    
    self.view = view;
    self.view.backgroundColor = [UIColor yellowColor];
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, 20, 100, 20)];
    label.backgroundColor = [UIColor greenColor];
    label.text = @"RightVC";
    [self.view addSubview:label];
//    [UIView animateWithDuration:3.0f animations:^{
        self.view.frame = [UIScreen mainScreen].bounds;
//    }];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [appDelegate transitionToViewController:[[VCFactory sharedInstance]getViewControllerWithId:typeCenter] withTransition:UIViewAnimationTransitionFlipFromLeft];
}

@end
