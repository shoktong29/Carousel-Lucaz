//
//  VCFactory.h
//  Transitions
//
//  Created by Martin on 6/25/13.
//  Copyright (c) 2013 Martin. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    typeLeft = 0,
    typeCenter = 1,
    typeRight = 2
}VCType;

@interface VCFactory : NSObject
@property (nonatomic, getter = getCurrentVC) UIViewController *currentVC;
@property (nonatomic, getter = getPreviousVC) UIViewController *previousVC;


+ (VCFactory *)sharedInstance;
- (UIViewController *)getViewControllerWithId:(VCType)type;
@end
