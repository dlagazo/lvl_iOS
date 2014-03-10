//
//  ViewController.h
//  lvListings
//
//  Created by Daniel Lagazo on 3/5/14.
//  Copyright (c) 2014 Daniel Lagazo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property(nonatomic,retain) IBOutlet UILabel *helloLabel;
@property(nonatomic, strong) IBOutlet UITextField *url;
@property(nonatomic, strong) IBOutlet UITextView *tv;
-(IBAction)getData:(id)sender;

-(NSString*)getDatafromUrl:(NSString*) url;
@end
