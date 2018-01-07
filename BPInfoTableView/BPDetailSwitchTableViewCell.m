//
//  BPDetailSwitchTableViewCell.m
//  qinziyuan_b_ios
//
//  Created by zhudou on 2017/12/6.
//  Copyright © 2017年 ryb. All rights reserved.
//

#import "BPDetailSwitchTableViewCell.h"

@implementation BPDetailSwitchTableViewCell

- (void)setupBaseInfo
{
    [super setupBaseInfo];
}

- (void)initBaseViews
{
    [super initBaseViews];
    UISwitch* detailSwitch = [[UISwitch alloc] init];
    [self.contentView addSubview:detailSwitch];
    self.detailSwitch = detailSwitch;
    [detailSwitch mas_makeConstraints:^(MASConstraintMaker* make) {
        make.right.equalTo(self.contentView).offset(-10);
        make.centerY.equalTo(self.contentView);
    }];
}
@end
