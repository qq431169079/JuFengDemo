//
//  AccountManager.h
//  JuFengDemo
//
//  Created by Tony Stark on 28/07/2019.
//  Copyright © 2019 SaturdayNight. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(int,AccountLoginState) {
    AccountLoginStateNone,          //未登录
    AccountLoginStateUser,          //用户名登录
};
NS_ASSUME_NONNULL_BEGIN

/*
 账号管理者
 账号登录状态记录
 账号设备管理
 */
@interface AccountManager : NSObject

@property (nonatomic,assign) AccountLoginState loginState;          //用户登录状态

+ (instancetype)shareInstance;

@end

NS_ASSUME_NONNULL_END
