//
//  KMNewPostViewController.m
//  HomeworkTwo
//
//  Created by Kelli Mohr on 10/28/13.
//  Copyright (c) 2013 Kelli Mohr. All rights reserved.
//

#import "KMNewPostViewController.h"
#import "KMPost.h"

@interface KMNewPostViewController ()

@end

@implementation KMNewPostViewController

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
}

-(IBAction)savePost:(id)sender
{
    
    NSLog(@"Button Pushed!");
    
//    _post.userName = _userNameTextField.text;
//    _post.title = _titleTextField.text;
//    _post.content = _contentTextField.text;
//    _post.timeStamp = [NSDate date];
    
    KMPost *post = [[KMPost alloc] init];
    post.title = _titleTextField.text;
    post.content = _contentTextField.text;
    post.timeStamp = [NSDate date];
    
    [self.delegate postWasAdded: post];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
