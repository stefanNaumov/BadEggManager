//
//  ViewController.m
//  BadEggManager
//
//  Created by admin on 11/11/14.
//  Copyright (c) 2014 admin. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController (){
    ButtonStyleSetter *btnStyleSetter;
}

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    btnStyleSetter = [[ButtonStyleSetter alloc] init];
    
    [self loadButtonsStyles];
}

-(void) loadButtonsStyles{
    [btnStyleSetter setShadowOffset:self.blackListButton width:5 height:5];
    [btnStyleSetter setShadowColor:self.blackListButton color:[UIColor blackColor]];
    [btnStyleSetter setShadowOpacity:self.blackListButton opacity:0.5];
    
    [btnStyleSetter setShadowOffset:self.addresBookBtn width:5 height:5];
    [btnStyleSetter setShadowColor:self.addresBookBtn color:[UIColor blackColor]];
    [btnStyleSetter setShadowOpacity:self.addresBookBtn opacity:0.5];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
