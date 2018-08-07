//
//  secondTableViewCell.m
//  text
//
//  Created by 王一卓 on 2018/8/6.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import "secondTableViewCell.h"

@implementation secondTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _pictureImageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 35, 35)];
        [self.contentView addSubview:_pictureImageView];
        
        _iView = [[UIImageView alloc] initWithFrame:CGRectMake (50, 50, 220, 120)];
        [self.contentView addSubview:_iView];
                                                              
        
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
