//
//  KMPostEditViewController.m
//  HomeworkTwo
//
//  Created by Kelli Mohr on 10/27/13.
//  Copyright (c) 2013 Kelli Mohr. All rights reserved.
//

#import "KMPostEditViewController.h"
#import "KMPost.h"

@interface KMPostEditViewController ()

@end

@implementation KMPostEditViewController

@synthesize userNameLabel;
@synthesize titleLabel;
@synthesize dateLabel;
@synthesize contentTextField;

@synthesize userName, postTitle, postDate, postContent;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
    userNameLabel.text = userName;
    titleLabel.text = postTitle;
    contentTextField.text = postContent;
    dateLabel.text = postDate;
    
}

- (IBAction)savePost:(id)sender
{
    userName = userNameLabel.text;
    postTitle = titleLabel.text;
    postContent = contentTextField.text;
  //  postDate.timeStamp = [NSDate date];
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
