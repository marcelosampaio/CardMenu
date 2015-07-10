//
//  UIColor+RandomColor.m
//  CardMenu
//
//  Created by Marcelo Sampaio on 7/3/15.
//  Copyright (c) 2015 Marcelo Sampaio. All rights reserved.
//

#import "UIColor+RandomColor.h"

@implementation UIColor(RandomColor)

// class Method
+(UIColor *)randomColor
{
    // Seed random number generator ONCE
    //    static BOOL isSeeded=NO;
    //    if (isSeeded==NO) {
    //        srandom(time(NULL));
    //        isSeeded=YES;
    //    }
    
    
    CGFloat redComponent=(CGFloat) random() / RAND_MAX;
    CGFloat greenComponent=(CGFloat) random() / RAND_MAX;;
    CGFloat blueComponent=(CGFloat) random() / RAND_MAX;;
    
    NSLog(@"r=%f g=%f b=%f",redComponent,greenComponent,blueComponent);
    
    
    return [[UIColor alloc]initWithRed:redComponent
                                 green:greenComponent
                                  blue:blueComponent
                                 alpha:1.0f];
}

+(UIColor *)cardDarkColor{
    return [UIColor colorWithRed:0.4 green:0.1 blue:0.6 alpha:1];
}
+(UIColor *)cardMediumColor{
    return [UIColor colorWithRed:0.5 green:0.2 blue:0.7 alpha:1];
}
+(UIColor *)cardLightColor{
    return [UIColor colorWithRed:0.6 green:0.3 blue:0.8 alpha:1];
}

@end
