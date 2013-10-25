//
//  KMPostTableViewCell.h
//  HomeworkTwo
//
//  Created by Kelli Mohr on 10/23/13.
//  Copyright (c) 2013 Kelli Mohr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KMPost.h"

@interface KMPostTableViewCell : UITableViewCell

@property (nonatomic, strong) IBOutlet KMPost *post;

@property (nonatomic, strong) IBOutlet UILabel *userNameLabel;
@property (nonatomic, strong) IBOutlet UILabel *titleLabel;
@property (nonatomic, strong) IBOutlet UILabel *contentLabel;
@property (nonatomic, strong) IBOutlet UILabel *dateLabel;

@end
