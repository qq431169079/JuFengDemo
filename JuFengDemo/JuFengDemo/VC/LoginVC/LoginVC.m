//
//  LoginVC.m
//  JuFengDemo
//
//  Created by Megatron on 2019/7/25.
//  Copyright © 2019 SaturdayNight. All rights reserved.
//

#import "LoginVC.h"

@interface LoginVC () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UITextField *tfUserName;
@property (weak, nonatomic) IBOutlet UITextField *tfPassword;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomC;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topC;

@end

@implementation LoginVC

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configSubviews];
}

- (void)configSubviews{
    //设置阴影效果
    self.tfUserName.layer.shadowRadius = 2;
    self.tfUserName.layer.shadowColor = [UIColor lightGrayColor].CGColor;
    self.tfUserName.layer.shadowOffset = CGSizeMake(1, 1);
    self.tfUserName.layer.shadowOpacity = 0.8;
    self.tfUserName.clipsToBounds = NO;
    
    self.tfPassword.layer.shadowRadius = 2;
    self.tfPassword.layer.shadowColor = [UIColor lightGrayColor].CGColor;
    self.tfPassword.layer.shadowOffset = CGSizeMake(1, 1);
    self.tfPassword.layer.shadowOpacity = 0.8;
    self.tfPassword.clipsToBounds = NO;
    
    self.tfUserName.delegate = self;
    self.tfPassword.delegate = self;
}

//MARK: - Action
- (void)upBGViewAnimation{
    [UIView animateWithDuration:0.3 animations:^{
        self.bottomC.constant = 90;
        self.topC.constant = -90;
        [self.view layoutIfNeeded];
    } completion:nil];
}

- (void)downBGViewAnimation{
    [UIView animateWithDuration:0.3 animations:^{
        self.bottomC.constant = 0;
        self.topC.constant = 0;
        [self.view layoutIfNeeded];
    } completion:nil];
}

//MARK: - Delegate
//MARK: UITextFieldDelegate
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    [self upBGViewAnimation];
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    [self downBGViewAnimation];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    return [textField resignFirstResponder];
}

@end
