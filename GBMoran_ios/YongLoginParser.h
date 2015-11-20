//
//  YongLoginParser.h
//  GBMoran_ios
//
//  Created by zhouyong on 15/11/20.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YongUserModel.h"

@interface YongLoginParser : NSObject

- (YongUserModel *)parseJson:(NSData *)data;

@end
