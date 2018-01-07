//
//  BPRowItem.m
//  qinziyuan_b_ios
//
//  Created by zhudou on 2017/12/6.
//  Copyright © 2017年 ryb. All rights reserved.
//

#import "BPRowItem.h"

@interface BPRowItem ()

@end

@implementation BPRowItem

- (instancetype)initWithStyle:(BPRowStyle)style accessoryType:(UITableViewCellAccessoryType)accessoryType selectionStyle:(UITableViewCellSelectionStyle)selectionStyle backgroundColor:(UIColor*)bgColor rowHeight:(CGFloat)rowHeight iconName:(NSString*)icon text:(NSString*)text detailText:(NSString*)detailText detailIcon:(NSString*)detailIcon lineStyle:(BPBottomLineStyle)lineStyle customClass:(NSString*)cls
{
    if (self = [super init]) {
        self.rowStyle = style;
        self.accessoryType = accessoryType;
        self.selectionStyle = selectionStyle;
        self.backgroundColor = bgColor;
        self.rowHeight = rowHeight;
        self.iconName = icon;
        self.mainText = text;
        self.detailText = detailText;
        self.detailIconName = detailIcon;
        self.lineStyle = lineStyle;
        self.customCellClass = cls;
    }
    return self;
}

@end
