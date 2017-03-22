//
//  ViewController.m
//  SlideMenu
//
//  Created by Kython Shu on 2017/3/22.
//  Copyright © 2017年 Kython Shu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";
    self.view.backgroundColor = [UIColor whiteColor];
}
//允许左滑
- (BOOL)slideNavigationControllerShouldDisplayLeftMenu
{
    return YES;
}
//允许右滑
- (BOOL)slideNavigationControllerShouldDisplayRightMenu
{
    return YES;
}
@end
