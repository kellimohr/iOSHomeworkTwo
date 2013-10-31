//
//  KMPostsTableViewController.h
//  HomeworkTwo
//
//  Created by Kelli Mohr on 10/22/13.
//  Copyright (c) 2013 Kelli Mohr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KMPost.h"

@interface KMPostsTableViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *posts;
@property (nonatomic, strong) IBOutlet UITableView *tableView;


@end
