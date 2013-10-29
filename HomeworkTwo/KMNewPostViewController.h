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
    
    IBOutlet UITextField *contentTextField, *userNameTextField, *titleTextField;
    NSDate *postDate;

}

-(IBAction)savePressed;

@property(nonatomic, strong) NSObject < NewPostDelegate > *delegate;




@end
