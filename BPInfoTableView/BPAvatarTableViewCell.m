

//
//  BPAvatarTableViewCell.m
//  qinziyuan_b_ios
//
//  Created by zhudou on 2017/12/6.
//  Copyright © 2017年 ryb. All rights reserved.
//

#import "BPAvatarTableViewCell.h"

@interface BPAvatarTableViewCell ()

@property (nonatomic, weak) UIImageView* backgroundImageView;
@property (nonatomic, weak) UIButton* avatarButton;
@property (nonatomic, weak) UILabel* userNameLabel;

@end

@implementation BPAvatarTableViewCell

- (void)setupBaseInfo
{
    [super setupBaseInfo];
}

- (void)initBaseViews
{
    UIImageView* backgroundImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:backgroundImageView];
    self.backgroundImageView = backgroundImageView;
    [backgroundImageView mas_makeConstraints:^(MASConstraintMaker* make) {
        make.edges.equalTo(self.contentView);
    }];

    UIButton* avatarButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.contentView addSubview:avatarButton];
    self.avatarButton = avatarButton;
    [avatarButton mas_makeConstraints:^(MASConstraintMaker* make) {
        make.centerY.equalTo(self.contentView);
        make.left.equalTo(self.contentView).offset(15);
    }];

    UILabel* userNameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:userNameLabel];
    userNameLabel.text = @"15822183660";
    self.userNameLabel = userNameLabel;
    [userNameLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.centerY.equalTo(avatarButton);
        make.left.equalTo(avatarButton.mas_right).offset(5);
    }];

    [super initBaseViews];
}
@end
