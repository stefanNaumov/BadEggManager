//
//  ButtonStyleSetter.m
//  BadEggManager
//
//  Created by admin on 11/11/14.
//  Copyright (c) 2014 admin. All rights reserved.
//

#import "ButtonStyleSetter.h"

@implementation ButtonStyleSetter


-(void) setShadowOffset:(UIButton *)button width:(float)width height:(float)height{
    button.layer.shadowOffset = CGSizeMake(width, height);
}

-(void) setShadowColor:(UIButton *)button color:(UIColor *)color{
    button.layer.shadowColor = color.CGColor;
}

-(void) setShadowOpacity:(UIButton *)button opacity:(float)opacity{
    button.layer.shadowOpacity = opacity;
}
@end
