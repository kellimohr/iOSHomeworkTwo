//
//  KMPostTableViewCell.m
//  HomeworkTwo
//
//  Created by Kelli Mohr on 10/23/13.
//  Copyright (c) 2013 Kelli Mohr. All rights reserved.
//

#import "KMPostTableViewCell.h"

@implementation KMPostTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@synthesize userNameLabel;
@synthesize titleLabel;
@synthesize contentLabel;
@synthesize dateLabel;

- (IBAction)setUserNameText:(UITextField *)userNameText
{
    
}

@end
