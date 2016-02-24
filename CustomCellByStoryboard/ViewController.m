//
//  ViewController.m
//  CustomCellByStoryboard
//
//  Created by panglong on 16/2/23.
//  Copyright © 2016年 庞龙. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"
#import "MJExtension.h"
#import "Model.h"
@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *array;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (NSMutableArray *)array
{
    if (_array == nil) {
        
        _array = [NSMutableArray array];
        
        NSDictionary *dict = @{@"name":@"Jack",@"age":@"12"};
        
        Model *model = [Model mj_objectWithKeyValues:dict];
        
        [_array addObject:model];
    }
    return _array;
}

#pragma mark - table data 数据代理

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [CustomCell cellWithTableView:tableView];
    
    cell.model = self.array[indexPath.row];
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
