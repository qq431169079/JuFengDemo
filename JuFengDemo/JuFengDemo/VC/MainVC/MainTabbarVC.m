//
//  MainTabbarVC.m
//  JuFengDemo
//
//  Created by Tony Stark on 28/07/2019.
//  Copyright © 2019 SaturdayNight. All rights reserved.
//

#import "MainTabbarVC.h"
#import "UIColor+Extension.h"

@interface MainTabbarVC ()

@end

@implementation MainTabbarVC

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    for (UITabBarItem *item in self.tabBar.items) {
        //设置tabbaritem 图片颜色为图片原始色
        item.selectedImage = [item.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        //设置tabbar选中字体颜色
        [item setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithHexString:@"#515151"]} forState:UIControlStateSelected];
    }
}

@end
