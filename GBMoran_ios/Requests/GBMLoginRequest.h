//
//  GBMLoginRequest.h
//  GBMoran_ios
//
//  Created by zhouyong on 15/11/18.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YongUserModel.h"

@class GBMLoginRequest;

@protocol GBMLoginRequestDelegate <NSObject>

-(void)loginRequestSuccess:(GBMLoginRequest *)request user:(YongUserModel *)user;
-(void)loginRequestFailed:(GBMLoginRequest *)request error:(NSError *)error;

@end


@interface GBMLoginRequest : NSObject<NSURLConnectionDataDelegate>

@property(nonatomic,strong) NSURLConnection *urlConnection;
@property(nonatomic,strong) NSMutableData *receiveData;
@property(nonatomic,assign) id<GBMLoginRequestDelegate> delegate;

-(void)sendLoginRequestWithEmail:(NSString *)email
                        password:(NSString *)password
                            gbid:(NSString *)gbid
                        delegate:(id<GBMLoginRequestDelegate>)delegate;


@end
