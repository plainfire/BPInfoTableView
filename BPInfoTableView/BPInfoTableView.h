//
//  BPInfoTableView.h
//  qinziyuan_b_ios
//
//  Created by zhudou on 2017/12/6.
//  Copyright © 2017年 ryb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BPRowItem.h"
#import "BPInfoBaseTableViewCell.h"
#import "BPPureTextImageTableViewCell.h"
#import "BPDetailButtonTableViewCell.h"
#import "BPDetailTextFieldTableViewCell.h"
#import "BPDetailSwitchTableViewCell.h"

@interface BPInfoTableView : UITableView

- (instancetype)initWithItems:(NSMutableArray<BPRowItem*>*)items;

@end

