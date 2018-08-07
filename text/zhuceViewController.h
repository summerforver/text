//
//  zhuceViewController.h
//  text
//
//  Created by 王一卓 on 2018/8/6.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import "ViewController.h"

typedef void (^ReturnTextBlock)(NSString *showText, NSString *passText);

@interface zhuceViewController : ViewController

@property (nonatomic, strong)UITextField *personTextField;
@property (nonatomic, strong)UITextField *passTextField;
@property (nonatomic,copy) ReturnTextBlock returnTextBlock;

- (void)returnText:(ReturnTextBlock)block;

@end
