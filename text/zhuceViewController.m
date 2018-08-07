//
//  zhuceViewController.m
//  text
//
//  Created by 王一卓 on 2018/8/6.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import "zhuceViewController.h"
#import "dengluViewController.h"

@interface zhuceViewController ()

@end

@implementation zhuceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor greenColor];
    
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
    

    
    
    
    
    UIButton *login1Button = [UIButton buttonWithType:UIButtonTypeCustom];
    login1Button.frame = CGRectMake(170, 400, 90, 35);
    [login1Button setTitle:@"确认注册" forState:UIControlStateNormal];
    login1Button.titleLabel.font = [UIFont systemFontOfSize:21.0];
    [login1Button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    login1Button.layer.masksToBounds = YES;
    login1Button.layer.cornerRadius = 5;
    
    login1Button.layer.borderWidth = 0.5;
    login1Button.layer.borderColor = [UIColor whiteColor].CGColor;
    [login1Button addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:label1];
    [self.view addSubview:_personTextField];
    [self.view addSubview:label2];
    [self.view addSubview:_passTextField];
    [self.view addSubview:login1Button];
    
}

- (void)press {
//    dengluViewController *vc = [[dengluViewController alloc] init];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}

-(void)returnText:(ReturnTextBlock)block{
    self.returnTextBlock = block;
}

-(void)viewWillDisappear:(BOOL)animated{
    if (self.returnTextBlock != nil) {
        self.returnTextBlock(self.personTextField.text,self.passTextField.text);
        
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
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
