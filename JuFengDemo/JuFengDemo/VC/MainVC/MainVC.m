//
//  MainVC.m
//  JuFengDemo
//
//  Created by Megatron on 2019/7/25.
//  Copyright © 2019 SaturdayNight. All rights reserved.
//

#import "MainVC.h"
#import "LoginVC.h"

@interface MainVC ()

@end

@implementation MainVC

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    UIStoryboard *mainSB = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    LoginVC *vc = [mainSB instantiateViewControllerWithIdentifier:@"LoginVC"];
    [self.navigationController pushViewController:vc animated:NO];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

@end
