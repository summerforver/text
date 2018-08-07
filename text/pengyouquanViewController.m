//
//  pengyouquanViewController.m
//  text
//
//  Created by 王一卓 on 2018/8/6.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import "pengyouquanViewController.h"
#import "firstTableViewCell.h"
#import "secondTableViewCell.h"
#import "TXLViewController.h"

@interface pengyouquanViewController ()

@end

@implementation pengyouquanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"朋友圈";
    
    _tableView = [[UITableView alloc] init];
    _tableView.backgroundColor = [UIColor whiteColor];
    _tableView.frame = CGRectMake(0, 64, 375, [UIScreen mainScreen].bounds.size.height);
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    
    [self.tableView registerClass:[firstTableViewCell class] forCellReuseIdentifier:@"cell2"];
    [self.tableView registerClass:[secondTableViewCell class] forCellReuseIdentifier:@"cell3"];
    
    [self.view addSubview:_tableView];
    
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    } else {
        return 5;
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @" ";
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return @" ";
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0.001;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.001;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 260;
    } else {
        return 220;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell1 = nil;
    if (indexPath.section == 0) {
        if (cell1 == nil) {
            
            cell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
            cell1 = [tableView dequeueReusableCellWithIdentifier:@"cell"];
            
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(240, 190, 40, 20)];
            label.text = @"twier";
            
            UIImageView *picImageView = [[UIImageView alloc] initWithFrame:CGRectMake(300, 190, 60, 60)];
            UIImage *pictureImage = [UIImage imageNamed:@"timg-3.jpeg"];
            
            picImageView.image = pictureImage;
            
            UIImageView *pictureImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 0, 320, 190)];
            UIImage *lineImage = [UIImage imageNamed:@"timg-13.jpeg"];
            pictureImageView.image = lineImage;
            
            
            [cell1 addSubview:label];
            [cell1 addSubview:picImageView];
            [cell1 addSubview:pictureImageView];

           
            
            
        }
        return cell1;
    } else if (indexPath.row % 2 == 0) {
//        firstTableViewCell *cell2 = nil;
        firstTableViewCell *cell2 = [[firstTableViewCell alloc] init];
        
        cell2 = [tableView dequeueReusableCellWithIdentifier:@"cell2"];
        cell2.pictureImageView.image = [UIImage imageNamed:@"11.jpg"];
        cell2.label1.text = @"全家鱼";
        cell2.label.text = @"今天行程已完，明天继续";
        cell2.iView.image = [UIImage imageNamed:@"15.jpg"];
        
    
        return cell2;
        
    } else {
        secondTableViewCell *cell3 = [[secondTableViewCell alloc] init];
        cell3 = [tableView dequeueReusableCellWithIdentifier:@"cell3"];
        
        cell3.pictureImageView.image = [UIImage imageNamed:@"16.jpg"];
        cell3.iView.image = [UIImage imageNamed:@"13.jpg"];
        
        return cell3;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 1 && indexPath.row == 0) {
        TXLViewController *vc = [[TXLViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
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
