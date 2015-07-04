//
//  CardView.m
//  CardMenu
//
//  Created by Marcelo Sampaio on 7/2/15.
//  Copyright (c) 2015 Marcelo Sampaio. All rights reserved.
//

#import "CardView.h"

@implementation CardView
@synthesize labelMessage,imageView;

- (id)initWithMessage:(UILabel *)p_Message image:(UIImageView *)p_ImageView
{
    self = [super init];
    if (self) {
        
        labelMessage=p_Message;
        imageView=p_ImageView;
        
        NSArray *nibs=[[NSBundle mainBundle] loadNibNamed:@"CardView" owner:self options:nil];
        self=[nibs objectAtIndex:0];

        
    }
    return self;
}

@end
