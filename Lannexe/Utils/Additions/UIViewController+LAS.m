//
//  UIViewController+LAS.m
//  Lannexe
//
//  Created by Marc Audefroy on 08/02/14.
//  Copyright (c) 2014 supinfo. All rights reserved.
//

#import "UIViewController+LAS.h"

@implementation UIViewController (LAS)

+(instancetype)viewControllerFromStoryBoardWithClass:(Class)viewControllerClass
{
    UIViewController *viewController;
    @try {
        viewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:NSStringFromClass(viewControllerClass)];
    }
    @catch (NSException *exception) {
        NSLog(@"viewController class is nil");
    }
    @finally {
        if(viewController == nil)
        {
            NSLog(@"ViewController with identifier %@ doesn't exist", NSStringFromClass(viewControllerClass));
        }
        return viewController;
    }
}
@end
