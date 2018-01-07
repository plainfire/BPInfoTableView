//
//  BPInfoBaseTableViewCell.h
//  qinziyuan_b_ios
//
//  Created by zhudou on 2017/12/6.
//  Copyright © 2017年 ryb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BPRowItem.h"

@interface BPInfoBaseTableViewCell : UITableViewCell

@property (nonatomic, strong) BPRowItem* rowItem;

+ (instancetype)cellWithTableView:(UITableView*)tableView rowItem:(BPRowItem*)item forIndexPath:(NSIndexPath*)indexPath;

- (void)setupBaseInfo;

- (void)initBaseViews;

@end
