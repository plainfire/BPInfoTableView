
//
//  BPDetailButtonTableViewCell.m
//  qinziyuan_b_ios
//
//  Created by zhudou on 2017/12/6.
//  Copyright © 2017年 ryb. All rights reserved.
//

#import "BPDetailButtonTableViewCell.h"

@implementation BPDetailButtonTableViewCell

- (void)setupBaseInfo
{
    [super setupBaseInfo];
    [self.detailButton setTitle:self.rowItem.detailText forState:UIControlStateNormal];
    [self.detailButton setImage:[UIImage bp_imageNamed:self.rowItem.detailIconName] forState:UIControlStateNormal];
}

- (void)initBaseViews
{
    [super initBaseViews];

    UIButton* detailButton = [UIButton buttonWithType:UIButtonTypeCustom];
    detailButton.titleLabel.font = [UIFont systemFontOfSize:14 weight:UIFontWeightRegular];
    [detailButton setTitleColor:BPHEXColor(0xa5a4a4, 1.0f) forState:UIControlStateNormal];
    self.detailButton = detailButton;
    [self.contentView addSubview:detailButton];
    [detailButton mas_makeConstraints:^(MASConstraintMaker* make) {
        make.centerY.equalTo(self.contentView);
        make.right.equalTo(self.contentView).offset(-10);
    }];
}

@end
