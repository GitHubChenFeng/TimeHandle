//
//  CFViewController.m
//  TimeHandle
//
//  Created by MacBook Pro on 14-7-31.
//  Copyright (c) 2014年 Macbook Pro. All rights reserved.
//

#import "CFViewController.h"

@interface CFViewController ()

@end

@implementation CFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSTimeInterval timeInt = [[NSDate date]timeIntervalSince1970];
    
    NSDateFormatter* formater = [[NSDateFormatter alloc] init];
    
    [formater setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate* date = [formater dateFromString:@"2014-07-31 14:15:24"];
    
    NSTimeInterval timeInt2 = [date timeIntervalSince1970];

    CGFloat fr = timeInt2 - timeInt;
    
    NSLog(@"===%0.f===%0.f===%0.f",timeInt,timeInt2,fr);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
