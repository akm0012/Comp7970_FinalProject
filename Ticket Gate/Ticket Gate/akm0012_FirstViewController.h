//
//  akm0012_FirstViewController.h
//  Ticket Gate
//
//  Created by Andrew Marshall on 7/16/14.
//  Copyright (c) 2014 Comp_7970_akm0012. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "akm0012_SecondViewController.h"

@interface akm0012_FirstViewController : UIViewController <UITabBarControllerDelegate>

@property (nonatomic, strong) akm0012_SecondViewController *second_view_controller;

@property BOOL ticket_2_active;
@property BOOL ticket_3_active;
@property BOOL ticket_4_active;
@property BOOL ticket_5_active;

// The views that get hidden by the keyboard
@property (weak, nonatomic) IBOutlet UILabel *ticket_type_label_4;
@property (weak, nonatomic) IBOutlet UILabel *ticket_type_label_5;
@property (weak, nonatomic) IBOutlet UIImageView *ticket_image_view_4;
@property (weak, nonatomic) IBOutlet UIImageView *ticket_image_view_5;


// The ON/OFF Switches
@property (weak, nonatomic) IBOutlet UISwitch *ticket_type_switch_2;
@property (weak, nonatomic) IBOutlet UISwitch *ticket_type_switch_3;
@property (weak, nonatomic) IBOutlet UISwitch *ticket_type_switch_4;
@property (weak, nonatomic) IBOutlet UISwitch *ticket_type_switch_5;

// The Name and Cost Fields
@property (weak, nonatomic) IBOutlet UITextField *ticket_name_field_1;
@property (weak, nonatomic) IBOutlet UITextField *ticket_name_field_2;
@property (weak, nonatomic) IBOutlet UITextField *ticket_name_field_3;
@property (weak, nonatomic) IBOutlet UITextField *ticket_name_field_4;
@property (weak, nonatomic) IBOutlet UITextField *ticket_name_field_5;

@property (weak, nonatomic) IBOutlet UITextField *ticket_cost_field_1;
@property (weak, nonatomic) IBOutlet UITextField *ticket_cost_field_2;
@property (weak, nonatomic) IBOutlet UITextField *ticket_cost_field_3;
@property (weak, nonatomic) IBOutlet UITextField *ticket_cost_field_4;
@property (weak, nonatomic) IBOutlet UITextField *ticket_cost_field_5;



- (IBAction)set_up_field_done_editing:(UITextField *)sender;
- (IBAction)hide_unhide_ticket_row:(UISwitch *)sender;

- (IBAction)move_up_textField:(UITextField *)sender;
- (IBAction)move_down_textField:(UITextField *)sender;
@end
