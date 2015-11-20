//
//  GBMLoginRequest.m
//  GBMoran_ios
//
//  Created by zhouyong on 15/11/18.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "GBMLoginRequest.h"
#import "BLMultipartForm.h"

@implementation GBMLoginRequest

-(void)sendLoginRequestWithEmail:(NSString *)email password:(NSString *)password gbid:(NSString *)gbid delegate:(id<GBMLoginRequestDelegate>)delegate{
    [self.urlConnection cancel];
    self.delegate = delegate;
    NSString *urlString  = @"http://moran.chinacloudapp.cn/moran/web/user/login";
    
    NSString *endcondeURLString = [urlString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}

@end
