//
//  CustomCell.m
//  CustomCellByStoryboard
//
//  Created by panglong on 16/2/23.
//  Copyright © 2016年 庞龙. All rights reserved.
//

#import "CustomCell.h"

@interface CustomCell ()

@property (weak, nonatomic) IBOutlet UILabel *firstLabel;


@end

@implementation CustomCell

- (void)setModel:(Model *)model
{
    _model = model;
    
    self.firstLabel.text = model.name;
}

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *identifier = @"CustomCell";
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell =  [[[NSBundle mainBundle] loadNibNamed:identifier owner:nil options:nil] firstObject];
    }
    return cell;
}

@end
