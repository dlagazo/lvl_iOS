//
//  AppDelegate.h
//  lvListings
//
//  Created by Daniel Lagazo on 3/5/14.
//  Copyright (c) 2014 Daniel Lagazo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
- (IBAction)btnGo:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imgSignature;

@end
