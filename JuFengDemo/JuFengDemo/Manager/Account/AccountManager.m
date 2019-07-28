//
//  AccountManager.m
//  JuFengDemo
//
//  Created by Tony Stark on 28/07/2019.
//  Copyright © 2019 SaturdayNight. All rights reserved.
//

#import "AccountManager.h"

@implementation AccountManager

+ (instancetype)shareInstance{
    static AccountManager *mamager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mamager = [[AccountManager alloc] init];
    });
    
    return mamager;
}

@end
