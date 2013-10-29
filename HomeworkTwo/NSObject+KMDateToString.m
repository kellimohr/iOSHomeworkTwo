//
//  NSObject+KMDateToString.m
//  HomeworkTwo
//
//  Created by Kelli Mohr on 10/28/13.
//  Copyright (c) 2013 Kelli Mohr. All rights reserved.
//

#import "NSObject+KMDateToString.h"

@implementation NSObject (KMDateToString)

+ (NSString*)convertDateToString:(NSDate *)date
{
    NSDate *convertDate = date;
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateStyle:NSDateFormatterShortStyle];
    NSString *dateString = [dateFormat stringFromDate:convertDate];
    
    return dateString;
}

@end
