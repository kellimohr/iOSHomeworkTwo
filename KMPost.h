//
//  KMPost.h
//  HomeworkTwo
//
//  Created by Kelli Mohr on 10/22/13.
//  Copyright (c) 2013 Kelli Mohr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KMPost : NSObject

@property (nonatomic) NSString *userName;
@property (nonatomic) NSString *title;
@property (nonatomic) NSString *content;
@property (nonatomic, retain) NSDate *timeStamp;

@end
