//
//  BPPureTextImageTableViewCell.m
//  qinziyuan_b_ios
//
//  Created by zhudou on 2017/12/6.
//  Copyright © 2017年 ryb. All rights reserved.
//

#import "BPPureTextImageTableViewCell.h"

@implementation BPPureTextImageTableViewCell

- (void)setupBaseInfo
{
    [super setupBaseInfo];
    self.iconImageView.image = [UIImage bp_imageNamed:self.rowItem.iconName];
    self.mainLabel.text = self.rowItem.mainText;
}

- (void)initBaseViews
{
    [super initBaseViews];
    UIImageView* iconImageView = [[UIImageView alloc] init];
    self.iconImageView = iconImageView;
    [self.contentView addSubview:iconImageView];
    [iconImageView mas_makeConstraints:^(MASConstraintMaker* make) {
        make.centerY.equalTo(self.contentView);
        make.left.equalTo(self.contentView).offset(15);
    }];

    UILabel* mainLabel = [[UILabel alloc] init];
    mainLabel.font = [UIFont systemFontOfSize:15 weight:UIFontWeightRegular];
    self.mainLabel = mainLabel;
    [self.contentView addSubview:mainLabel];
    [mainLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.left.equalTo(iconImageView.mas_right).offset(5);
        make.centerY.equalTo(iconImageView);
    }];
}

@end
