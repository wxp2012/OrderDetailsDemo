//
//  OrderDetailCell.m
//  OrderDetails
//
//  Created by  on 16/6/7.
//  Copyright © 2016年 xp. All rights reserved.
//

#import "OrderDetailCell.h"
#import <Masonry.h>

@implementation OrderDetailCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.backgroundColor = [UIColor clearColor];
        
        _thumbImageV = [[UIImageView alloc] init];
        _thumbImageV.image = [UIImage imageNamed:@"circle"];
        [self.contentView addSubview:_thumbImageV];
        [_thumbImageV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.and.height.mas_equalTo(15.);
            make.centerY.mas_equalTo(self.mas_centerY);
            make.left.mas_equalTo(self.mas_left).offset(20.);
        }];
        
        _toplineImageV = [[UIImageView alloc] init];
        _toplineImageV.image = [UIImage imageNamed:@"Line"];
        [self.contentView addSubview:_toplineImageV];
        [_toplineImageV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(2.);
            make.top.mas_equalTo(self.mas_top);
            make.bottom.mas_equalTo(_thumbImageV.mas_top);
            make.centerX.mas_equalTo(_thumbImageV.mas_centerX);
        }];
        
        _belowlineImageV = [[UIImageView alloc] init];
        _belowlineImageV.image = [UIImage imageNamed:@"Line"];
        [self.contentView addSubview:_belowlineImageV];
        [_belowlineImageV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(_toplineImageV.mas_width);
            make.top.mas_equalTo(_thumbImageV.mas_bottom);
            make.bottom.mas_equalTo(self.mas_bottom);
            make.centerX.mas_equalTo(_thumbImageV.mas_centerX);
        }];
        
        _detailImageV = [[UIImageView alloc] init];
        _detailImageV.image = [UIImage imageNamed:@"Combined Shape"];
        [self.contentView addSubview:_detailImageV];
        [_detailImageV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(45.0);
            make.centerY.mas_equalTo(_thumbImageV.mas_centerY);
            make.left.mas_equalTo(_thumbImageV.mas_right).offset(10.);
            make.right.mas_equalTo(self.mas_right).offset(-20);
        }];
    }
    return self;
}

- (void) setIndex:(NSInteger)index
{
    if (index == 0) {
        [_toplineImageV setHidden:YES];
    }
    else
    {
        [_toplineImageV setHidden:NO];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
