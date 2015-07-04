//
//  CardView.h
//  CardMenu
//
//  Created by Marcelo Sampaio on 7/2/15.
//  Copyright (c) 2015 Marcelo Sampaio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CardView : UIView

@property (strong, nonatomic) IBOutlet UILabel *labelMessage;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

- (id)initWithMessage:(UILabel *)p_Message image:(UIImageView *)p_ImageView;

@end
