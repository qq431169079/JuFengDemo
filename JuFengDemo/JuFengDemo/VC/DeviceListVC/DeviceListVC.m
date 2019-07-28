//
//  DeviceListVC.m
//  JuFengDemo
//
//  Created by Tony Stark on 28/07/2019.
//  Copyright © 2019 SaturdayNight. All rights reserved.
//

#import "DeviceListVC.h"
#import "AccountManager.h"
#import "LoginVC.h"

@interface DeviceListVC ()

@end

@implementation DeviceListVC

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    //判断是否登录 如果未登录 跳转到登录界面
    if ([AccountManager shareInstance].loginState == AccountLoginStateNone) {
        UIStoryboard *mainSB = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        LoginVC *vc = [mainSB instantiateViewControllerWithIdentifier:@"LoginVC"];
        vc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:vc animated:NO];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
