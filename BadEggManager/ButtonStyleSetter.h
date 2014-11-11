//
//  ButtonStyleSetter.h
//  BadEggManager
//
//  Created by admin on 11/11/14.
//  Copyright (c) 2014 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ButtonStyleSetter : NSObject

-(void) setShadowOffset:(UIButton *)button width:(float) width height: (float) height;

-(void) setShadowOpacity:(UIButton *) button opacity:(float) opacity;

-(void) setShadowColor: (UIButton *) button color:(UIColor *) color;

@end
