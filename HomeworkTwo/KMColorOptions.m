//
//  KMColorOptions.m
//  HomeworkTwo
//
//  Created by Kelli Mohr on 10/28/13.
//  Copyright (c) 2013 Kelli Mohr. All rights reserved.
//

#import "KMColorOptions.h"

@implementation UIColor (ColorOptions)

+ (UIColor *) randomColor
{
    
    float randColorWithRed = (arc4random() % 101);
    float randGreen = (arc4random() % 101);
    float randBlue = (arc4random() % 101);
    float randAlpha = (arc4random() % 101);
    
    UIColor *newColor = [UIColor colorWithRed: (randColorWithRed / 100)
                                        green: (randGreen / 100)
                                         blue: (randBlue / 100)
                                        alpha: (randAlpha / 100)];
    
    return newColor;
    
}

+ (UIColor *) lightenColor:(UIColor *)color
{
    CGFloat r, g, b, a;
    if ([color getRed:&r green:&g blue:&b alpha:&a])
        return [UIColor colorWithRed:MIN(r + 0.2, 1.0)
                               green:MIN(g + 0.2, 1.0)
                                blue:MIN(b + 0.2, 1.0)
                               alpha:a];
    return nil;
}

@end
