//
//  ViewController.m
//  lvListings
//
//  Created by Daniel Lagazo on 3/5/14.
//  Copyright (c) 2014 Daniel Lagazo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize helloLabel;
@synthesize url;
@synthesize tv;

-(NSString*)getDatafromUrl:urlString{
    NSHTTPURLResponse* urlResponse = nil;
    NSError *error = [[NSError alloc] init];
    
    //NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:[NSString stringWithUTF8String:"http://washere.azurewebsites.net/api/ProfileAPI/639399208247"]]];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:urlString]];
    
    [request setHTTPMethod:@"GET"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    NSData *returnData = [NSURLConnection sendSynchronousRequest:request returningResponse:&urlResponse
                                                           error:&error];
    NSString *responseBody = [[NSString alloc] initWithData:returnData encoding:NSUTF8StringEncoding];
    
    int responseCode = [urlResponse statusCode];
    int errorCode = [error code];
    
    NSLog(@"Response Code:%i", responseCode);
    NSLog(@"Error Code: %i", errorCode);
    NSLog(responseBody);
    return responseBody;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"DID LOAD!");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getData:(id)sender {
    
    
    NSLog(@"test api result");
    //NSLog(urlData);
    //return [[NSString alloc] initWithData:urlData encoding:NSUTF8StringEncoding];
    [tv setText:[self getDatafromUrl:[url text]]  ];
}



@end

