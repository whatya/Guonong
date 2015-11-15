//
//  LoginVC.m
//  Guonong
//
//  Created by 张宝 on 15/10/24.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "LoginVC.h"
#import "Macros.h"
#import "UserDataService.h"

@interface LoginVC ()
#pragma mark- 页面顶部

#pragma mark- 属性
@property (weak, nonatomic) IBOutlet UIImageView        *bkImageView;
@property (weak, nonatomic) IBOutlet UIButton           *wxLoginBtn;
@property (weak, nonatomic) IBOutlet UIButton           *loginBtn;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *loginViewToBottomCST;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *wxBtnToBottomCST;
@property (weak, nonatomic) IBOutlet UITextField *usernameTF;
@property (weak, nonatomic) IBOutlet UITextField *passwordTF;
@property (weak, nonatomic) IBOutlet UIButton *closeBtn;

@property (nonatomic,strong)UserDataService *userDataService;

@end

@implementation LoginVC

#define RegisterSegue       @"Register Segue"
#define FindPasswordSegue   @"FindPassword Segue"

#pragma mark- 视图生命周期
- (void)viewDidLoad
{
    ShowLog
    [super viewDidLoad];
    [self makeUI];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    HideTopBar;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    showTopBar;
}

#pragma mark- 初始化界面
- (void)makeUI
{
    ShowLog
    //1、判断型号 --》2、根据信号设置不同的背景图
    int phoneType = [self phoneVersion];
    NSString *imageName = [NSString stringWithFormat:@"sign%d",phoneType];
    self.bkImageView.image = Image(imageName);
    
    //3、给登陆按钮添加圆角、边框
    AddCorner(self.wxLoginBtn, 5, 0, nil);
    AddCorner(self.loginBtn, 5, 1, [UIColor whiteColor]);
    
    //4、适配iPhone4、4s
    int phoneVersion = [self phoneVersion];
    if (phoneVersion == 4) {
        self.loginViewToBottomCST.constant = 8;
        self.wxBtnToBottomCST.constant = 16;
    }else if (phoneVersion == 7){
        self.loginViewToBottomCST.constant = 100;
    }
    
    //5、改变placeholder的字体颜色
    UIColor *color = [UIColor whiteColor];
    self.usernameTF.attributedPlaceholder = [[NSAttributedString alloc]
                                             initWithString:@"手机号"
                                             attributes:@{NSForegroundColorAttributeName: color}];
    self.passwordTF.attributedPlaceholder = [[NSAttributedString alloc]
                                             initWithString:@"密码"
                                             attributes:@{NSForegroundColorAttributeName: color}];
    
    //5、隐藏显示关闭按钮
    if (self.showColseBtn) {
        self.closeBtn.hidden = NO;
    }else{
        self.closeBtn.hidden = YES;
    }
}

#pragma mark- Targe Actions 方法
#pragma mark- 关闭页面
- (IBAction)dismiss:(UIButton *)sender
{
    ShowLog
    [self dismissViewControllerAnimated:YES completion:NULL];
}

#pragma mark- 登陆
- (IBAction)login:(UIButton *)sender
{
    ShowLog
    //1、验证用户名密码 --》2、掉用service登陆 --》3、根据登陆结果调用回调函数
    
    //1、验证用户名密码
    if (!IsValidPhone(self.usernameTF.text)) {
        PopError(@"请输入有效手机号！");
        return;
    }
    if (!IsPasswordValidAndGreatThan(6, self.passwordTF.text)) {
        PopError(@"密码长度必须大于6！");
        return;
    }
    
    //2、调用service登陆
    InProgress(@"登陆中...");
    [self.userDataService loginWithUsername:self.usernameTF.text
                                   password:self.passwordTF.text
                                     result:^(BOOL success, NSString *errorString, NSDictionary *data) {
                                         MissionEnd();//隐藏进度显示
                                         if (!success) {
                                             PopError(errorString);
                                             return ;
                                         }
                                         
                                         //3、调用block
                                         void(^temp)(BOOL success,NSString *errorString,NSDictionary *data) = self.loginCallback;
                                         if (temp) {
                                             temp(YES,nil,@{UsernameKey:self.usernameTF.text,PasswordKey:self.passwordTF.text});
                                         }
                                         
                                     }];
    
   
    

    
}

#pragma mark- segue
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:RegisterSegue]) {
        [segue.destinationViewController setValue:@"注册" forKey:@"incomingTitle"];
    }else if ([segue.identifier isEqualToString:FindPasswordSegue]){
        [segue.destinationViewController setValue:@"忘记密码" forKey:@"incomingTitle"];
    }
}

#pragma mark- 微信登陆
- (IBAction)weixinLogin:(UIButton *)sender
{
    
}

#pragma mark- 惰性初始化
- (UserDataService *)userDataService
{
    if (!_userDataService) {
        _userDataService = [[UserDataService alloc] init];
    }
    return _userDataService;
}

#pragma mark- 页面底部
@end
