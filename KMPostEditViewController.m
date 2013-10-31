//
//  KMPostEditViewController.m
//  HomeworkTwo
//
//  Created by Kelli Mohr on 10/27/13.
//  Copyright (c) 2013 Kelli Mohr. All rights reserved.
//

#import "KMPostEditViewController.h"
#import "KMPost.h"
#import "NSObject+KMDateToString.h"

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
    userNameLabel.text = _post.userName;
    titleLabel.text = _post.title;
    contentTextField.text = _post.content;
    dateLabel.text = [NSObject convertDateToString: _post.timeStamp];
    
}

- (IBAction)savePost:(id)sender
{
    _post.userName = userNameLabel.text;
    _post.title = titleLabel.text;
    _post.content = contentTextField.text;
    _post.timeStamp = [NSDate date];
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
