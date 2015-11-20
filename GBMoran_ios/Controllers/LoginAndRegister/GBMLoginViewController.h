//
//  GBMLoginViewController.h
//  GBMoran_ios
//
//  Created by zhouyong on 15/11/17.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GBMLoginRequest.h"

@interface GBMLoginViewController : UIViewController<UITextFieldDelegate,GBMLoginRequestDelegate>

@property (nonatomic, strong) GBMLoginRequest *loginRequest;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
- (IBAction)loginButtonClicked:(id)sender;
- (IBAction)touchDownAction:(id)sender;

@end
