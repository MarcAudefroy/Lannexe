//
//  NSData+UIColor_LAS.m
//  Lannexe
//
//  Created by Marc Audefroy on 08/02/14.
//  Copyright (c) 2014 supinfo. All rights reserved.
//

#import "UIColor+LAS.h"

@implementation UIColor (LAS)

+(instancetype)colorWithIntegerRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha
{
    CGFloat ratioColor = 255.0;
    return [UIColor colorWithRed:red/ratioColor green:green/ratioColor blue:blue/ratioColor alpha:alpha];
}

@end
