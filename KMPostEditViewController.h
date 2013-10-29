//
//  KMPostEditViewController.h
//  HomeworkTwo
//
//  Created by Kelli Mohr on 10/27/13.
//  Copyright (c) 2013 Kelli Mohr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KMPostEditViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *userNameLabel;
@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *dateLabel;

@property (nonatomic, weak) IBOutlet UITextField *contentTextField;

@property (nonatomic, strong) NSString *userName, *postTitle, *postDate, *postContent;

- (IBAction)savePost:(id)sender;

@end
