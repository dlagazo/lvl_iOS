//
//  UnitsViewController.h
//  lvListings
//
//  Created by Daniel Lagazo on 3/9/14.
//  Copyright (c) 2014 Daniel Lagazo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UnitsViewController;

@protocol UnitsViewControllerDelegate <NSObject>
-(void)unitsViewControllerDidCancel:(UnitsViewController *)controller;
-(void)unitsViewControllerDidSave:(UnitsViewController *)controller;
@end

@interface UnitsViewController : UITableViewController

@property(nonatomic,weak) id <UnitsViewControllerDelegate> delegate;

-(IBAction)cancel:(id)sender;
-(IBAction)done:(id)sender;


@end
