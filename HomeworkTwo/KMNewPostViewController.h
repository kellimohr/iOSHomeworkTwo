//
//  KMNewPostViewController.h
//  HomeworkTwo
//
//  Created by Kelli Mohr on 10/28/13.
//  Copyright (c) 2013 Kelli Mohr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KMPost.h"

//delegate to return a new post entered by the user
@protocol NewPostViewControllerDelegate

@optional

-(void)postWasAdded:(KMPost *)post;

@end

@interface KMNewPostViewController : UIViewController

// @property (nonatomic, weak) KMPost *post; Don't need this anymore
    
@property (nonatomic, weak) IBOutlet UITextField *contentTextField;
@property (nonatomic, weak) IBOutlet UITextField *userNameTextField;
@property (nonatomic, weak)IBOutlet UITextField *titleTextField;

@property(nonatomic, strong) id< NewPostViewControllerDelegate > delegate;

-(IBAction)savePost:(id)sender;






@end
