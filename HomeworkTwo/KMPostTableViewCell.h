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
@property (nonatomic, strong) IBOutlet UITextField *userNameText;
@property (nonatomic, strong) IBOutlet UITextField *titleText;
@property (nonatomic, strong) IBOutlet UITextView *contentView;
@property (nonatomic, strong) IBOutlet UITextField *dateText;

- (IBAction)setUserNameText:(UITextField *)userNameText;
@end
