# BPInfoTableview

一个快速构建iOS App个人中心、设置等页面的框架，只需使用UITableView，不需要继承整个UIViewController。不区分 section 和 row，通用写法，可以自行扩展新类型。


## 使用说明

类型 |参数说明
---|---|---
BPRowStylePureTextImage | 纯文本图片
BPRowStyleDetailTextAndImage |  右侧文本或图片
BPRowStyleDetailTextField |  右侧输入框
BPRowStyleDetailSwitch | 右侧开关
BPRowStyleCustomView | 自定义 view

## 自定义使用

1.  新建`UITableViewCell`继承`BPInfoBaseTableViewCell`

2.  `m 文件`重写`- (void)setupBaseInfo`(初始化控件数据)和`- (void)initBaseViews`（初始化控件）

3.  初始化 `BPRowItem` 传参`customClass`为新类


## 使用示例

```
NSMutableArray* items = [NSMutableArray array];
//初始化数据源
BPRowItem* avatarItem = [[BPRowItem alloc] initWithStyle:BPRowStyleCustomView accessoryType:UITableViewCellAccessoryDisclosureIndicator selectionStyle:UITableViewCellSelectionStyleDefault backgroundColor:nil rowHeight:120 iconName:nil text:nil detailText:nil detailIcon:nil lineStyle:BPBottomLineStyleSolidColor customClass:NSStringFromClass([BPAvatarTableViewCell class])];
[avatarItem setSelectAction:^(BPAvatarTableViewCell* cell) {
//do somthing...
}];
BPRowItem* kidItem = [[BPRowItem alloc] initWithStyle:BPRowStylePureTextImage accessoryType:UITableViewCellAccessoryDisclosureIndicator selectionStyle:UITableViewCellSelectionStyleDefault backgroundColor:nil rowHeight:45 iconName:nil text:@"我的宝宝" detailText:nil detailIcon:nil lineStyle:BPBottomLineStyleSolidColor customClass:nil];
[items addObjectsFromArray:@[ avatarItem, kidItem]];
//初始化 tableView
BPInfoTableView* infoTableView = [[BPInfoTableView alloc] initWithItems:items];
[self.view addSubview:infoTableView];
infoTableView.backgroundColor = BPHEXColor(0xf1f1f1, 1.0f);
self.infoTableView = infoTableView;
[infoTableView mas_makeConstraints:^(MASConstraintMaker* make) {
make.edges.equalTo(self.view);
}];
[infoTableView reloadData];

```
