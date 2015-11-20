//
//  YongUserModel.h
//  GBMoran_ios
//
//  Created by zhouyong on 15/11/20.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YongUserModel : NSObject

@property (nonatomic,copy) NSString *username;
@property (nonatomic,copy) NSString *email;
@property (nonatomic,copy) NSString *password;
@property (nonatomic,copy) NSString *loginReturnMessage;
@property (nonatomic,copy) NSString *registerreturnMessage;

@end
