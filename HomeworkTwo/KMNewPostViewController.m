//
//  KMNewPostViewController.m
//  HomeworkTwo
//
//  Created by Kelli Mohr on 10/28/13.
//  Copyright (c) 2013 Kelli Mohr. All rights reserved.
//

#import "KMNewPostViewController.h"

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

-(IBAction)savePressed
{
    //Is anyone listening
    if ([_delegate  respondsToSelector:@selector(newPost:)])
    {
        KMPost *postToAdd = [[KMPost alloc] init];
        postToAdd.userName = userNameTextField.text;
        postToAdd.title = titleTextField.text;
        postToAdd.content = contentTextField.text;
        postToAdd.timeStamp = [NSDate date];
        
        //send the delegate function with the amount entered by the user
      //  [_delegate newPost:[postToAdd KMPost]];
    }
    
    [self dismissModalViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
