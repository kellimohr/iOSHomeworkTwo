//
//  KMPostEditViewController.h
//  HomeworkTwo
//
//  Created by Kelli Mohr on 10/27/13.
//  Copyright (c) 2013 Kelli Mohr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KMPostEditViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *userNameLabel;
@property (nonatomic, strong) IBOutlet UILabel *titleLabel;
@property (nonatomic, strong) IBOutlet UILabel *dateLabel;

@property (nonatomic, strong) IBOutlet UITextField *contentTextField;

@end
