//
//  KMPostsTableViewController.m
//  HomeworkTwo
//
//  Created by Kelli Mohr on 10/22/13.
//  Copyright (c) 2013 Kelli Mohr. All rights reserved.
//

#import "KMPostsTableViewController.h"
#import "KMPost.h"
#import "KMPostTableViewCell.h"

@interface KMPostsTableViewController ()

@end

@implementation KMPostsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    KMPost *post1 = [[KMPost alloc] init];
    post1.userName = @"Kelli Mohr";
    post1.title = @"iOS Tables";
    post1.content = @"I really hope I'm doing this right.";
    post1.timeStamp = [NSDate date];
    
    KMPost *post2 = [[KMPost alloc] init];
    post2.userName = @"Kelli Mohr";
    post2.title = @"More iOS Tables";
    post2.content = @"I really really hope I'm doing this right.";
    post2.timeStamp = [NSDate date];
    
    KMPost *post3 = [[KMPost alloc] init];
    post3.userName = @"Kelli Mohr";
    post3.title = @"Custom Table View Cells";
    post3.content = @"I went down a crazy path.";
    post3.timeStamp = [NSDate date];
    
    KMPost *post4 = [[KMPost alloc] init];
    post4.userName = @"Kelli Mohr";
    post4.title = @"Custom Table View Cells";
    post4.content = @"Is there any way back?!";
    post4.timeStamp = [NSDate date];
    
    KMPost *post5 = [[KMPost alloc] init];
    post5.userName = @"Kelli Mohr";
    post5.title = @"Dates to Strings";
    post5.content = @"Ugh. Format Date to String";
    post5.timeStamp = [NSDate date];
    
    KMPost *post6 = [[KMPost alloc] init];
    post6.userName = @"Kelli Mohr";
    post6.title = @"Date Formats";
    post6.content = @"Found a tutorial.";
    post6.timeStamp = [NSDate date];
    
    KMPost *post7 = [[KMPost alloc] init];
    post7.userName = @"Kelli Mohr";
    post7.title = @"More iOS Tables";
    post7.content = @"Why doesn't this scroll?";
    post7.timeStamp = [NSDate date];
    
    KMPost *post8 = [[KMPost alloc] init];
    post8.userName = @"Kelli Mohr";
    post8.title = @"More iOS Tables";
    post8.content = @"I really really hope I'm doing this right.";
    post8.timeStamp = [NSDate date];
    
    KMPost *post9 = [[KMPost alloc] init];
    post9.userName = @"Kelli Mohr";
    post9.title = @"More iOS Tables";
    post9.content = @"I really really hope I'm doing this right.";
    post9.timeStamp = [NSDate date];
    
    KMPost *post10 = [[KMPost alloc] init];
    post10.userName = @"Kelli Mohr";
    post10.title = @"More iOS Tables";
    post10.content = @"I really really hope I'm doing this right.";
    post10.timeStamp = [NSDate date];
    
    _posts = [NSArray arrayWithObjects: post1, post2, post3, post4, post5, post6, post7,
                                        post8, post9, post10, nil];
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
       self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return _posts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"PostTableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    //cell.post = [_posts[indexPath.row]];
    //cell.userNameText.text = [_posts[indexPath.row] userName];
    //cell.titleText.text = [_posts[indexPath.row] title];
    //cell.contentView.text = [_posts[indexPath.row] content];
    //cell.dateText.text = [_posts[indexPath.row] timeStamp];
    
    NSDate *postDate = [_posts[indexPath.row] timeStamp];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateStyle:NSDateFormatterShortStyle];
    NSString *dateString = [dateFormat stringFromDate:postDate];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@ - %@",[_posts[indexPath.row] title], [_posts[indexPath.row] userName] ];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@  %@", [_posts[indexPath.row] content], dateString];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
