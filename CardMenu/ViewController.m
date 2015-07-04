//
//  ViewController.m
//  CardMenu
//
//  Created by Marcelo Sampaio on 7/2/15.
//  Copyright (c) 2015 Marcelo Sampaio. All rights reserved.
//

#import "ViewController.h"
#import "CardView.h"
#import "UIColor+RandomColor.h"

@interface ViewController ()

@end

@implementation ViewController


#pragma mark - View Life Cycle
- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self addUIComponent];
    
    
}

-(void)addUIComponent{
    UILabel *message=[[UILabel alloc]initWithFrame:CGRectMake(8, 14, 145, 21)];
    UIImageView *imageView=[[UIImageView alloc]init];

    
    CardView *cardView=[[CardView alloc]initWithMessage:message image:imageView];
    
    cardView.frame=CGRectMake(-30, -1000, 260, 320);
    cardView.backgroundColor=[UIColor randomColor];
    cardView.labelMessage.text=@"Lorem Ipsum";
    cardView.imageView.image=[UIImage imageNamed:@"image"];
    cardView.tag=800;
    cardView.layer.cornerRadius=8;
    cardView.layer.masksToBounds=YES;
    
    [self.view addSubview:cardView];
    
    
    // move the view

    [UIView animateWithDuration:0.55 animations:^{
        // animation
        cardView.center=CGPointMake(160, self.view.frame.size.height/2+30);
    } completion:^(BOOL finished) {
        // completion handler (bouncing effect)
        [UIView animateWithDuration:0.25 animations:^{
            cardView.center=CGPointMake(160, self.view.frame.size.height/2);
        }];
    }];

}

- (IBAction)refresh:(id)sender {
    for (UIView *view in self.view.subviews) {
        NSLog(@"view tag=%ld",(long)view.tag);
        if (view.tag>=800) {
            [UIView animateWithDuration:0.55 animations:^{
                // animation
                view.center=CGPointMake(-1000, self.view.frame.size.height/2);
            } completion:^(BOOL finished) {
                // completion handler (bouncing effect)
                [view removeFromSuperview];
            }];
        }
        
    }
    [self addUIComponent];
    
}



@end
