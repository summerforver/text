//
//  dengluViewController.m
//  text
//
//  Created by 王一卓 on 2018/8/6.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import "dengluViewController.h"
#import "zhuceViewController.h"
#import "pengyouquanViewController.h"
#import "TXLViewController.h"

@interface dengluViewController ()

@end

@implementation dengluViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 70, 40)];
    label1.text = @"用户名:";
    _personTextField = [[UITextField alloc] init];
    _personTextField.frame = CGRectMake(100, 100, 220, 40);
    _personTextField.layer.masksToBounds = YES;
    _personTextField.layer.cornerRadius = 7;
    _personTextField.backgroundColor = [UIColor whiteColor];
    
    
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(20, 170, 70, 40)];
    label2.text = @"密码:";
    _passTextField = [[UITextField alloc] init];
    _passTextField.frame = CGRectMake(100, 170, 220, 40);
    _passTextField.layer.masksToBounds = YES;
    _passTextField.layer.cornerRadius = 7;
    _passTextField.backgroundColor = [UIColor whiteColor];
    
    
    
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    submitButton.frame = CGRectMake(100, 400, 90, 35);
    [submitButton setTitle:@"登陆" forState:UIControlStateNormal];
    submitButton.titleLabel.font = [UIFont systemFontOfSize:21.0];
    [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    submitButton.layer.masksToBounds = YES;
    submitButton.layer.cornerRadius = 5;
    
    submitButton.layer.borderWidth = 0.5;
    submitButton.layer.borderColor = [UIColor whiteColor].CGColor;
    
    [submitButton addTarget:self action:@selector(pressSubmit) forControlEvents:UIControlEventTouchDown];
    
    
    
    
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    loginButton.frame = CGRectMake(210, 400, 90, 35);
    [loginButton setTitle:@"注册" forState:UIControlStateNormal];
    loginButton.titleLabel.font = [UIFont systemFontOfSize:21.0];
    [loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    loginButton.layer.masksToBounds = YES;
    loginButton.layer.cornerRadius = 5;
    
    loginButton.layer.borderWidth = 0.5;
    loginButton.layer.borderColor = [UIColor whiteColor].CGColor;
    [loginButton addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchDown];
    
    
    
    
    
    [self.view addSubview:label1];
    [self.view addSubview:_personTextField];
    [self.view addSubview:label2];
    [self.view addSubview:_passTextField];
    [self.view addSubview:submitButton];
    [self.view addSubview:loginButton];
    
    
    
}

- (void)pressSubmit {
    
//    self.personTextField.text = _str1;
//    self.passTextField.text = _str2;
//
//    if ([_str1 isEqualToString:@"04151001"] && [_str2 isEqualToString:@"1234567890"]) {
    
        UITabBarController *tabBarController = [[UITabBarController alloc] init];
        [[UITabBar appearance] setBarTintColor:[UIColor lightGrayColor]];
        
        //        dengluViewController *submit = [[dengluViewController alloc] init];
        //        submit.tabBarItem.image = [[UIImage imageNamed:@"账户"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        //        submit.tabBarItem.title = @"注册";
        //    //    submit.tabBarItem.selectedImage = [[UIImage imageNamed:@"radio_button1_pressed"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        //    //
        //
        //        zhuceViewController *login = [[zhuceViewController alloc] init];
        //        login.tabBarItem.image = [[UIImage imageNamed:@"关于"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        //
        //        login.tabBarItem.title = @"登录";
        
        pengyouquanViewController *friend = [[pengyouquanViewController alloc] init];
        friend.tabBarItem.image = [[UIImage imageNamed:@"朋友"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        friend.tabBarItem.title = @"朋友圈";
        
        TXLViewController *talk = [[TXLViewController alloc] init];
        talk.tabBarItem.image = [[UIImage imageNamed:@"账户"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        talk.tabBarItem.title = @"通讯录";
        
        
        //        UINavigationController *submitNavigationController = [[UINavigationController alloc] initWithRootViewController:submit];
        //
        //         UINavigationController *loginNavigationController = [[UINavigationController alloc] initWithRootViewController:login];
        //
        UINavigationController *friendNavigationController = [[UINavigationController alloc] initWithRootViewController:friend];
        UINavigationController *talkNavigationController = [[UINavigationController alloc] initWithRootViewController:talk];
        
        //        tabBarController.viewControllers = @[submitNavigationController, loginNavigationController, friendNavigationController];
        
        tabBarController.viewControllers = @[talkNavigationController,friendNavigationController];
        
        self.view.window.rootViewController = tabBarController;
        
        
        
//    } else {
//
//        zhuceViewController *a = [[zhuceViewController alloc] init];
//        [self presentViewController:a animated:YES completion:nil];
//    }
    
    
}

- (void)pressLogin {
    zhuceViewController *vc = [[zhuceViewController alloc] init];
    
    [vc returnText:^(NSString *showText, NSString *passText) {
        self.personTextField.text = showText;
        self.passTextField.text = passText;
    }];
    
    [self presentViewController:vc animated:YES completion:nil];

    
//    self.view.window.rootViewController = vc;
//    [self.navigationController pushViewController:vc animated:YES];
    
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
