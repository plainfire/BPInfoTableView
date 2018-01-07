//
//  BPDetailTextFieldTableViewCell.m
//  qinziyuan_b_ios
//
//  Created by zhudou on 2017/12/6.
//  Copyright © 2017年 ryb. All rights reserved.
//

#import "BPDetailTextFieldTableViewCell.h"

@implementation BPDetailTextFieldTableViewCell

- (void)setupBaseInfo
{
    [super setupBaseInfo];
}

- (void)initBaseViews
{
    [super initBaseViews];
    UITextField* detailTextField = [[UITextField alloc] init];
    [self.contentView addSubview:detailTextField];
    self.detailTextField = detailTextField;
    detailTextField.font = [UIFont systemFontOfSize:15 weight:UIFontWeightLight];
    detailTextField.textColor = BPHEXColor(0xa5a4a4, 1.0f);
    detailTextField.textAlignment = NSTextAlignmentRight;
    detailTextField.placeholder = self.rowItem.detailText;
    [detailTextField mas_makeConstraints:^(MASConstraintMaker* make) {
        make.right.equalTo(self.contentView).offset(-10);
        make.centerY.equalTo(self.contentView);
        make.left.width.lessThanOrEqualTo(@(200));
        make.height.equalTo(@(40));
    }];
}

@end
