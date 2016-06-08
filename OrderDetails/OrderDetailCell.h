//
//  OrderDetailCell.h
//  OrderDetails
//
//  Created by  on 16/6/7.
//  Copyright © 2016年 xp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrderDetailCell : UITableViewCell

@property (nonatomic,strong) UIImageView *thumbImageV;
@property (nonatomic,strong) UIImageView *detailImageV;
@property (nonatomic,strong) UIImageView *toplineImageV;
@property (nonatomic,strong) UIImageView *belowlineImageV;
@property (nonatomic) NSInteger index;

@end
