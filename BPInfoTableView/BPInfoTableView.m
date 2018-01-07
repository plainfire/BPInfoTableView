

//
//  BPInfoTableView.m
//  qinziyuan_b_ios
//
//  Created by zhudou on 2017/12/6.
//  Copyright © 2017年 ryb. All rights reserved.
//

#import "BPInfoTableView.h"

@interface BPInfoTableView () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray<BPRowItem*>* items;

@end

@implementation BPInfoTableView

- (instancetype)init
{
    if (self = [super init]) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithItems:(NSMutableArray<BPRowItem*>*)items
{
    if (self = [super init]) {
        self.items = items;
        [self setup];
    }
    return self;
}

- (void)setup
{
    self.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self registerClass:[BPPureTextImageTableViewCell class] forCellReuseIdentifier:BPPureTextImageTableViewCell.className];
    [self registerClass:[BPDetailButtonTableViewCell class] forCellReuseIdentifier:BPDetailButtonTableViewCell.className];
    [self registerClass:[BPDetailTextFieldTableViewCell class] forCellReuseIdentifier:BPDetailTextFieldTableViewCell.className];
    [self registerClass:[BPDetailSwitchTableViewCell class] forCellReuseIdentifier:BPDetailSwitchTableViewCell.className];
    for (BPRowItem* item in self.items) {
        if (item.rowStyle == BPRowStyleCustomView) {
            [self registerClass:NSClassFromString(item.customCellClass) forCellReuseIdentifier:item.customCellClass];
        }
    }
    self.dataSource = self;
    self.delegate = self;
}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}

- (CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath
{
    BPRowItem* item = [self.items objectAtIndex:indexPath.row];
    return item.rowHeight;
}

- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    BPRowItem* item = [self.items objectAtIndex:indexPath.row];
    BPInfoBaseTableViewCell* cell = nil;
    switch (item.rowStyle) {
    case BPRowStylePureTextImage:
        return [BPPureTextImageTableViewCell cellWithTableView:tableView rowItem:item forIndexPath:indexPath];
        break;
    case BPRowStyleDetailTextAndImage:
        return [BPDetailButtonTableViewCell cellWithTableView:tableView rowItem:item forIndexPath:indexPath];
        break;
    case BPRowStyleDetailTextField:
        return [BPDetailTextFieldTableViewCell cellWithTableView:tableView rowItem:item forIndexPath:indexPath];
        break;
    case BPRowStyleDetailSwitch:
        return [BPDetailSwitchTableViewCell cellWithTableView:tableView rowItem:item forIndexPath:indexPath];
        break;
    case BPRowStyleCustomView:
        return [NSClassFromString(item.customCellClass) cellWithTableView:tableView rowItem:item forIndexPath:indexPath];
    default:
        break;
    }
    return nil;
}

- (void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    BPRowItem* item = [self.items objectAtIndex:indexPath.row];
    if (item.selectAction) {
        BPInfoBaseTableViewCell* cell = [tableView cellForRowAtIndexPath:indexPath];
        item.selectAction(cell);
    }
}

@end
