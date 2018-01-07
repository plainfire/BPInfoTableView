

//
//  BPRowItem.h
//  qinziyuan_b_ios
//
//  Created by zhudou on 2017/12/6.
//  Copyright © 2017年 ryb. All rights reserved.
//

#import "BPModel.h"

typedef NS_ENUM(NSInteger, BPRowStyle) {
    BPRowStylePureTextImage = 0,
    BPRowStyleDetailTextAndImage,
    BPRowStyleDetailTextField,
    BPRowStyleDetailSwitch,
    BPRowStyleCustomView
};
typedef NS_ENUM(NSInteger, BPBottomLineStyle) {
    BPBottomLineStyleNone = 0,
    BPBottomLineStyleSolidColor
};

typedef void (^additionalAction)(id cell);
typedef void (^didSelectAction)(id cell);

@interface BPRowItem : BPModel

@property (nonatomic, assign) BPRowStyle rowStyle;
@property (nonatomic, assign) BPBottomLineStyle lineStyle;
@property (nonatomic, assign) UITableViewCellAccessoryType accessoryType;
@property (nonatomic, assign) UITableViewCellSelectionStyle selectionStyle;
@property (nonatomic, assign) CGFloat rowHeight;
@property (nonatomic, strong) NSIndexPath* indexPath;
@property (nonatomic, strong) UIColor* backgroundColor;
@property (nonatomic, copy) NSString* iconName;
@property (nonatomic, copy) NSString* mainText;
@property (nonatomic, copy) NSString* detailText;
@property (nonatomic, copy) NSString* detailIconName;
@property (nonatomic, copy) NSString* customCellClass;
@property (nonatomic, strong) additionalAction additionalAction;
@property (nonatomic, strong) didSelectAction selectAction;

- (instancetype)initWithStyle:(BPRowStyle)style accessoryType:(UITableViewCellAccessoryType)accessoryType selectionStyle:(UITableViewCellSelectionStyle)selectionStyle backgroundColor:(UIColor*)bgColor rowHeight:(CGFloat)rowHeight iconName:(NSString*)icon text:(NSString*)text detailText:(NSString*)detailText detailIcon:(NSString*)detailIcon lineStyle:(BPBottomLineStyle)lineStyle customClass:(NSString*)cls;

@end
