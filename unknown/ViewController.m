//
//  ViewController.m
//  unknown
//
//  Created by Ryusen Sasa on 2014/02/01.
//  Copyright (c) 2014年 Ryusen Sasa. All rights reserved.
//

#import "ViewController.h"

#define keyId @"id"
#define keyTitle @"title"

@interface ViewController ()


@end

@implementation ViewController


-(void)getTimeLine {
    NSString* url = @"http://localhost:3000/books.json";
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    NSData *json_data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSError *error=nil;
    
    NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData:json_data options:NSJSONReadingAllowFragments error:&error];
    NSLog(@"%@",[jsonArray objectAtIndex:0]);


}




- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self getTimeLine];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
