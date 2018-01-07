

//
//  BPInfoBaseTableViewCell.m
//  qinziyuan_b_ios
//
//  Created by zhudou on 2017/12/6.
//  Copyright © 2017年 ryb. All rights reserved.
//

#import "BPInfoBaseTableViewCell.h"

@interface BPInfoBaseTableViewCell ()

@property (nonatomic, weak) UIView* splitLineView;

@end
@implementation BPInfoBaseTableViewCell

+ (instancetype)cellWithTableView:(UITableView*)tableView rowItem:(BPRowItem*)item forIndexPath:(NSIndexPath*)indexPath
{
    NSString* className = self.className;
    if (item.rowStyle == BPRowStyleCustomView) {
        className = item.customCellClass;
    }
    BPInfoBaseTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:className forIndexPath:indexPath];
    if (!cell) {
        cell = [[self alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:className];
    }
    item.indexPath = indexPath;
    cell.rowItem = item;
    return cell;
}

- (void)setRowItem:(BPRowItem*)rowItem
{
    _rowItem = rowItem;
    [self setupBaseInfo];
    if (rowItem.additionalAction) {
        rowItem.additionalAction(self);
    }
}

- (void)setupBaseInfo
{
    self.splitLineView.hidden = (self.rowItem.lineStyle != BPBottomLineStyleSolidColor);
    self.accessoryType = self.rowItem.accessoryType;
    self.selectionStyle = self.rowItem.selectionStyle;
    self.contentView.backgroundColor = self.rowItem.backgroundColor;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString*)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initBaseViews];
    }
    return self;
}

- (void)initBaseViews
{
    UIView* splitLineView = [[UIView alloc] init];
    self.splitLineView = splitLineView;
    [self.contentView addSubview:splitLineView];
    splitLineView.backgroundColor = BPLineColor;
    [splitLineView mas_makeConstraints:^(MASConstraintMaker* make) {
        make.left.right.bottom.equalTo(self.contentView);
        make.height.equalTo(@(BPOnePixel));
    }];
}

@end
