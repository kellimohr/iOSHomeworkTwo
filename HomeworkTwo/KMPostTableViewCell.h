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
{
    UILabel *userNameLabel;
    UILabel *titleLabel;
    UILabel *contentLabel;
    UILabel *dateLabel;
}

@property (nonatomic, strong) IBOutlet KMPost *post;

@property (nonatomic, strong) IBOutlet UITextField *userNameLabel;
@property (nonatomic, strong) IBOutlet UITextField *titleLabel;
@property (nonatomic, strong) IBOutlet UITextView *contentLabel;
@property (nonatomic, strong) IBOutlet UITextField *dateLabel;

- (IBAction)setUserNameText:(UITextField *)userNameText;
@end
