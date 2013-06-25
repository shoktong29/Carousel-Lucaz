//
//  LeftVC.m
//  Transitions
//
//  Created by Martin on 6/25/13.
//  Copyright (c) 2013 Martin. All rights reserved.
//

#import "LeftVC.h"
#import "AppDelegate.h"
#import "VCFactory.h"

@implementation LeftVC

- (void)loadView{
    UIView *view = [[UIView alloc] initWithFrame:CGRectZero];
    view.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    
    self.view = view;
    self.view.backgroundColor = [UIColor blueColor];
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, 20, 100, 20)];
    label.backgroundColor = [UIColor greenColor];
    label.text = @"LeftVC";
    [self.view addSubview:label];
//    [UIView animateWithDuration:3.0f animations:^{
        self.view.frame = [UIScreen mainScreen].bounds;
//    }];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [appDelegate transitionToViewController:[[VCFactory sharedInstance]getViewControllerWithId:typeRight] withTransition:UIViewAnimationTransitionFlipFromRight];
}

@end
