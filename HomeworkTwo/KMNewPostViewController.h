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
@protocol NewPostDelegate
   @required
   -(void)newPost:(KMPost *)post;
@end

@interface KMNewPostViewController : UIViewController
{
    
    IBOutlet UITextField *contentTextField;
    IBOutlet UITextField *userNameTextField;
    IBOutlet UITextField *titleTextField;
    NSDate *postDate;

}

-(IBAction)savePost;

@property(nonatomic, strong) NSObject < NewPostDelegate > *delegate;




@end
