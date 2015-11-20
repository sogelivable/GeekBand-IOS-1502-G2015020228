//
//  GBMLoginViewController.m
//  GBMoran_ios
//
//  Created by zhouyong on 15/11/17.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "GBMLoginViewController.h"
#import "YongUserModel.h"
#import "GBMLoginRequest.h"

@implementation GBMLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.emailTextField.delegate = self;
    self.passwordTextField.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)loginButtonClicked:(id)sender {
    NSString *userName = self.emailTextField.text;
    NSString *password = self.passwordTextField.text;
    
    if ([userName length] == 0 || [password length] == 0) {
        [self showErrorMessage:@"Email and password can not be empty."];
    }else{
        [self loginHandle];
    }
}

- (IBAction)touchDownAction:(id)sender {
    [self.emailTextField resignFirstResponder];
    [self.passwordTextField resignFirstResponder];
}

-(void)showErrorMessage:(NSString *)msg{
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:nil message:msg delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

-(void)loginHandle{
    NSString *email = self.emailTextField.text;
    NSString *password = self.passwordTextField.text;
    NSString *gbid = @"CSYZ";
    self.loginRequest = [[GBMLoginRequest alloc]init];
    [self.loginRequest sendLoginRequestWithEmail:email password:password gbid:gbid delegate:self];
    NSLog(@"email:%@",email);
}

#pragma mark - gmloginrequesrtdelegate methods
-(void)loginRequestSuccess:(GBMLoginRequest *)request user:(YongUserModel *)user{
    if ([user.loginReturnMessage isEqualToString:@"Login success"]) {
        NSLog(@"go to index page...");
    }else{
        NSLog(@"server error:%@",user.loginReturnMessage);
    }
}

-(void)loginRequestFailed:(GBMLoginRequest *)request error:(NSError *)error{
    NSLog(@"login failed : %@", error);
}

@end
