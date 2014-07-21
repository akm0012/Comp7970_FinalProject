//
//  akm0012_FirstViewController.h
//  Ticket Gate
//
//  Created by Andrew Marshall on 7/16/14.
//  Copyright (c) 2014 Comp_7970_akm0012. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface akm0012_FirstViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *ticket_type_switch_1;

- (IBAction)hide_unhide_ticket_row:(UISwitch *)sender;

@end
