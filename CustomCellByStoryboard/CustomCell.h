//
//  CustomCell.h
//  CustomCellByStoryboard
//
//  Created by panglong on 16/2/23.
//  Copyright © 2016年 庞龙. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model.h"

@interface CustomCell : UITableViewCell

@property (nonatomic, strong) Model *model;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
