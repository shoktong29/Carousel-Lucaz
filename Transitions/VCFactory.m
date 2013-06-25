//
//  VCFactory.m
//  Transitions
//
//  Created by Martin on 6/25/13.
//  Copyright (c) 2013 Martin. All rights reserved.
//

#import "VCFactory.h"
#import "ViewController.h"
#import "RightVC.h"
#import "LeftVC.h"

@implementation VCFactory

static VCFactory *_instance = nil;
+ (VCFactory *)sharedInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc]init];
    });
    return _instance;
}

- (UIViewController *)getViewControllerWithId:(VCType)type{
    UIViewController *vc = _currentVC;
    switch (type) {
        case typeLeft:
            _previousVC = _currentVC; //ensure _currentVC will be allocated after transfer to _previousVC
            _currentVC = [[LeftVC alloc]init];
            break;
        case typeCenter:
            _previousVC = _currentVC;
            _currentVC = [[ViewController alloc]init];
            break;
        case typeRight:
            _previousVC = _currentVC;
            _currentVC = [[RightVC alloc]init];
            break;
        default:
            break;
    }
    if (_currentVC != _previousVC) {
        vc = nil; //release the previous vc
    }
    return _currentVC;
}
@end
