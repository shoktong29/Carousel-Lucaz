//
//  main.m
//  Transitions
//
//  Created by Martin on 6/25/13.
//  Copyright (c) 2013 Martin. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

// From here to end of file added by Injection Plugin //

#ifdef DEBUG
static char _inMainFilePath[] = __FILE__;
static const char *_inIPAddresses[] = {"127.0.0.1", "192.168.0.101", NULL};

#define INJECTION_ENABLED
#import "/Applications/Injection Plugin.app/Contents/Resources/InjectionPlugin.xcplugin/Contents/Resources/BundleInjection.h"
#endif
