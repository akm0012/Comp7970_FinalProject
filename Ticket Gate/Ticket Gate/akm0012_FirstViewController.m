//
//  akm0012_FirstViewController.m
//  Ticket Gate
//
//  Created by Andrew Marshall on 7/16/14.
//  Copyright (c) 2014 Comp_7970_akm0012. All rights reserved.
//

#import "akm0012_FirstViewController.h"

@interface akm0012_FirstViewController ()

@property BOOL ticket_type_4_isUp;

@end

@implementation akm0012_FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.tabBarController.delegate = self;
    
    self.second_view_controller = [[akm0012_SecondViewController alloc] init];
    
    // Get the status of the switches
    self.ticket_2_active = self.ticket_type_switch_2.isOn;
    self.ticket_3_active = self.ticket_type_switch_3.isOn;
    self.ticket_4_active = self.ticket_type_switch_4.isOn;
    self.ticket_5_active = self.ticket_type_switch_5.isOn;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Note: The first ticket type will always be avaliable
- (IBAction)hide_unhide_ticket_row:(UISwitch *)sender {
    
    switch (sender.tag) {
            // Ticket Type 2
        case 2:
            if (sender.isOn) {
                // Make ticket type 2 unhidden
                self.ticket_2_active = YES;
                
            }
            else {
                // Make ticket type 2 hidden
                self.ticket_2_active = NO;
                
            }
            break;
            
            // Ticket Type 3
        case 3:
            if (sender.isOn) {
                // Make ticket type 3 unhidden
                self.ticket_3_active = YES;
                
            }
            else {
                // Make ticket type 3 hidden
                self.ticket_3_active = NO;
                
            }
            break;
            
            // Ticket Type 4
        case 4:
            if (sender.isOn) {
                // Make ticket type 3 unhidden
                self.ticket_4_active = YES;
                
            }
            else {
                // Make ticket type 3 hidden
                self.ticket_4_active = NO;
                
            }
            break;
            
            // Ticket Type 5
        case 5:
            if (sender.isOn) {
                // Make ticket type 5 unhidden
                self.ticket_5_active = YES;
                
            }
            else {
                // Make ticket type 5 hidden
                self.ticket_5_active = NO;
                
            }
            break;
            
        default:
            break;
    }
    
}

- (IBAction)move_up_textField:(UITextField *)sender {
    
    if (sender.tag == 4) {
        
        // Animate moving the 4th ticket type up
        
        [UIView beginAnimations:@"animate" context:nil];
        [UIView setAnimationDuration:0.5f];
        [UIView setAnimationBeginsFromCurrentState: YES];
        self.ticket_type_switch_4.frame = CGRectMake(90, 327, 51, 31);
        self.ticket_type_label_4.frame = CGRectMake(185, 331, 138, 24);
        self.ticket_name_field_4.frame = CGRectMake(402, 328, 241, 30);
        self.ticket_cost_field_4.frame = CGRectMake(722, 328, 97, 30);
        self.ticket_image_view_4.frame = CGRectMake(67, 294, 854, 103);
        [UIView commitAnimations];
        
    }
    
    else if (sender.tag == 5) {
        
        // Animate moving the 5th ticket type up
        
        [UIView beginAnimations:@"animate" context:nil];
        [UIView setAnimationDuration:0.5f];
        [UIView setAnimationBeginsFromCurrentState: YES];
        self.ticket_type_switch_5.frame = CGRectMake(90, 327, 51, 31);
        self.ticket_type_label_5.frame = CGRectMake(185, 331, 138, 24);
        self.ticket_name_field_5.frame = CGRectMake(402, 328, 241, 30);
        self.ticket_cost_field_5.frame = CGRectMake(722, 328, 97, 30);
        self.ticket_image_view_5.frame = CGRectMake(67, 294, 854, 103);
        [UIView commitAnimations];
        
    }
    
}

- (IBAction)move_down_textField:(UITextField *)sender {
    
    // Animate moving the ticket type back to where it started
    
    if (sender.tag == 4) {
        
        if (!self.ticket_name_field_4.isSelected && !self.ticket_cost_field_4.isSelected) {
            
            [UIView beginAnimations:@"animate" context:nil];
            [UIView setAnimationDuration:0.5f];
            [UIView setAnimationBeginsFromCurrentState: YES];
            self.ticket_type_switch_4.frame = CGRectMake(90, 449, 51, 31);
            self.ticket_type_label_4.frame = CGRectMake(185, 453, 138, 24);
            self.ticket_name_field_4.frame = CGRectMake(402, 450, 241, 30);
            self.ticket_cost_field_4.frame = CGRectMake(722, 450, 97, 30);
            self.ticket_image_view_4.frame = CGRectMake(67, 413, 854, 103);
            [UIView commitAnimations];
        }
    }
    
    else if (sender.tag == 5) {
        
        if (!self.ticket_name_field_5.isSelected && !self.ticket_cost_field_5.isSelected) {
            
            [UIView beginAnimations:@"animate" context:nil];
            [UIView setAnimationDuration:0.5f];
            [UIView setAnimationBeginsFromCurrentState: YES];
            self.ticket_type_switch_5.frame = CGRectMake(90, 531, 51, 31);
            self.ticket_type_label_5.frame = CGRectMake(185, 535, 138, 24);
            self.ticket_name_field_5.frame = CGRectMake(402, 532, 241, 30);
            self.ticket_cost_field_5.frame = CGRectMake(722, 532, 97, 30);
            self.ticket_image_view_5.frame = CGRectMake(67, 495, 854, 103);
            [UIView commitAnimations];
        }

        
    }
    
}

- (IBAction)set_up_field_done_editing:(UITextField *)sender {
    
    // Here I can check if the number values are valid
    
    // The Names will just have some default value if left empty
    
    //    switch (sender.tag) {
    //        // Ticket Type # 1 - Name Field
    //        case 1:
    //            self.second_view_controller.ticket_label_1.text = self.ticket_name_field_1.text;
    //            break;
    //
    //        default:
    //            break;
    //    }
    
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    self.second_view_controller = (akm0012_SecondViewController *) [tabBarController.viewControllers objectAtIndex:1];
    
    /*  Here we check to see what ticket type numbers are active.
     If the ticket type is active we display all the views.
     We also set any text values we get from the set up screen.
     
     If the ticket type is not active, we hide all the views.
     */
    
    // Ticket Type 1
    // Set the label from the set up text fields.
    self.second_view_controller.ticket_label_1.text = self.ticket_name_field_1.text;
    self.second_view_controller.subtotal_label_1.text = self.ticket_name_field_1.text;
    
    // If the field is left blank we give it a default name
    if ([self.second_view_controller.ticket_label_1.text isEqualToString:@""]) {
        
        NSString *default_ticket_string_1 = @"Default Ticket 1";
        self.second_view_controller.ticket_label_1.text = default_ticket_string_1;
        self.second_view_controller.subtotal_label_1.text = default_ticket_string_1;
        self.ticket_name_field_1.text = default_ticket_string_1;
        
    }
    
    // Ticket Type 2
    if (self.ticket_2_active) {
        self.second_view_controller.ticket_row_image_view_2.hidden = NO;
        self.second_view_controller.stepper_2.hidden = NO;
        self.second_view_controller.white_num_background_2.hidden = NO;
        self.second_view_controller.ticket_num_display_2.hidden = NO;
        self.second_view_controller.ticket_label_2.hidden = NO;
        self.second_view_controller.ticket_subtitle_2.hidden = NO;
        self.second_view_controller.subtotal_label_2.hidden = NO;
        self.second_view_controller.subtotal_num_display_2.hidden = NO;
        self.second_view_controller.subtotal_extras_2.hidden = NO;
        
        // Set the label from the set up text fields.
        self.second_view_controller.ticket_label_2.text = self.ticket_name_field_2.text;
        self.second_view_controller.subtotal_label_2.text = self.ticket_name_field_2.text;
        
        // If the field is left blank we give it a default name
        if ([self.second_view_controller.ticket_label_2.text isEqualToString:@""]) {
            
            NSString *default_ticket_string_2 = @"Default Ticket 2";
            self.second_view_controller.ticket_label_2.text = default_ticket_string_2;
            self.second_view_controller.subtotal_label_2.text = default_ticket_string_2;
            self.ticket_name_field_2.text = default_ticket_string_2;
        }
        
    }
    
    else {
        self.second_view_controller.ticket_row_image_view_2.hidden = YES;
        self.second_view_controller.stepper_2.hidden = YES;
        self.second_view_controller.white_num_background_2.hidden = YES;
        self.second_view_controller.ticket_num_display_2.hidden = YES;
        self.second_view_controller.ticket_label_2.hidden = YES;
        self.second_view_controller.ticket_subtitle_2.hidden = YES;
        self.second_view_controller.subtotal_label_2.hidden = YES;
        self.second_view_controller.subtotal_num_display_2.hidden = YES;
        self.second_view_controller.subtotal_extras_2.hidden = YES;
    }
    
    // Ticket Type 3
    if (self.ticket_3_active) {
        self.second_view_controller.ticket_row_image_view_3.hidden = NO;
        self.second_view_controller.stepper_3.hidden = NO;
        self.second_view_controller.white_num_background_3.hidden = NO;
        self.second_view_controller.ticket_num_display_3.hidden = NO;
        self.second_view_controller.ticket_label_3.hidden = NO;
        self.second_view_controller.ticket_subtitle_3.hidden = NO;
        self.second_view_controller.subtotal_label_3.hidden = NO;
        self.second_view_controller.subtotal_num_display_3.hidden = NO;
        self.second_view_controller.subtotal_extras_3.hidden = NO;
        
        // Set the label from the set up text fields.
        self.second_view_controller.ticket_label_3.text = self.ticket_name_field_3.text;
        self.second_view_controller.subtotal_label_3.text = self.ticket_name_field_3.text;
        
        // If the field is left blank we give it a default name
        if ([self.second_view_controller.ticket_label_3.text isEqualToString:@""]) {
            
            NSString *default_ticket_string_3 = @"Default Ticket 3";
            self.second_view_controller.ticket_label_3.text = default_ticket_string_3;
            self.second_view_controller.subtotal_label_3.text = default_ticket_string_3;
            self.ticket_name_field_3.text = default_ticket_string_3;
        }
        
    }
    
    else {
        self.second_view_controller.ticket_row_image_view_3.hidden = YES;
        self.second_view_controller.stepper_3.hidden = YES;
        self.second_view_controller.white_num_background_3.hidden = YES;
        self.second_view_controller.ticket_num_display_3.hidden = YES;
        self.second_view_controller.ticket_label_3.hidden = YES;
        self.second_view_controller.ticket_subtitle_3.hidden = YES;
        self.second_view_controller.subtotal_label_3.hidden = YES;
        self.second_view_controller.subtotal_num_display_3.hidden = YES;
        self.second_view_controller.subtotal_extras_3.hidden = YES;
    }
    
    // Ticket Type 4
    if (self.ticket_4_active) {
        self.second_view_controller.ticket_row_image_view_4.hidden = NO;
        self.second_view_controller.stepper_4.hidden = NO;
        self.second_view_controller.white_num_background_4.hidden = NO;
        self.second_view_controller.ticket_num_display_4.hidden = NO;
        self.second_view_controller.ticket_label_4.hidden = NO;
        self.second_view_controller.ticket_subtitle_4.hidden = NO;
        self.second_view_controller.subtotal_label_4.hidden = NO;
        self.second_view_controller.subtotal_num_display_4.hidden = NO;
        self.second_view_controller.subtotal_extras_4.hidden = NO;
        
        // Set the label from the set up text fields.
        self.second_view_controller.ticket_label_4.text = self.ticket_name_field_4.text;
        self.second_view_controller.subtotal_label_4.text = self.ticket_name_field_4.text;
        
        // If the field is left blank we give it a default name
        if ([self.second_view_controller.ticket_label_4.text isEqualToString:@""]) {
            
            NSString *default_ticket_string_4 = @"Default Ticket 4";
            self.second_view_controller.ticket_label_4.text = default_ticket_string_4;
            self.second_view_controller.subtotal_label_4.text = default_ticket_string_4;
            self.ticket_name_field_4.text = default_ticket_string_4;
        }
    }
    
    else {
        self.second_view_controller.ticket_row_image_view_4.hidden = YES;
        self.second_view_controller.stepper_4.hidden = YES;
        self.second_view_controller.white_num_background_4.hidden = YES;
        self.second_view_controller.ticket_num_display_4.hidden = YES;
        self.second_view_controller.ticket_label_4.hidden = YES;
        self.second_view_controller.ticket_subtitle_4.hidden = YES;
        self.second_view_controller.subtotal_label_4.hidden = YES;
        self.second_view_controller.subtotal_num_display_4.hidden = YES;
        self.second_view_controller.subtotal_extras_4.hidden = YES;
    }
    
    // Ticket Type 5
    if (self.ticket_5_active) {
        self.second_view_controller.ticket_row_image_view_5.hidden = NO;
        self.second_view_controller.stepper_5.hidden = NO;
        self.second_view_controller.white_num_background_5.hidden = NO;
        self.second_view_controller.ticket_num_display_5.hidden = NO;
        self.second_view_controller.ticket_label_5.hidden = NO;
        self.second_view_controller.ticket_subtitle_5.hidden = NO;
        self.second_view_controller.subtotal_label_5.hidden = NO;
        self.second_view_controller.subtotal_num_display_5.hidden = NO;
        self.second_view_controller.subtotal_extras_5.hidden = NO;
        
        // Set the label from the set up text fields.
        self.second_view_controller.ticket_label_5.text = self.ticket_name_field_5.text;
        self.second_view_controller.subtotal_label_5.text = self.ticket_name_field_5.text;
        
        // If the field is left blank we give it a default name
        if ([self.second_view_controller.ticket_label_5.text isEqualToString:@""]) {
            
            NSString *default_ticket_string_5 = @"Default Ticket 5";
            self.second_view_controller.ticket_label_5.text = default_ticket_string_5;
            self.second_view_controller.subtotal_label_5.text = default_ticket_string_5;
            self.ticket_name_field_5.text = default_ticket_string_5;
        }
    }
    
    else {
        self.second_view_controller.ticket_row_image_view_5.hidden = YES;
        self.second_view_controller.stepper_5.hidden = YES;
        self.second_view_controller.white_num_background_5.hidden = YES;
        self.second_view_controller.ticket_num_display_5.hidden = YES;
        self.second_view_controller.ticket_label_5.hidden = YES;
        self.second_view_controller.ticket_subtitle_5.hidden = YES;
        self.second_view_controller.subtotal_label_5.hidden = YES;
        self.second_view_controller.subtotal_num_display_5.hidden = YES;
        self.second_view_controller.subtotal_extras_5.hidden = YES;
    }
    
}

- (IBAction)backgroundTap:(id)sender {
    [self.ticket_name_field_1 resignFirstResponder];
    [self.ticket_name_field_2 resignFirstResponder];
    [self.ticket_name_field_3 resignFirstResponder];
    [self.ticket_name_field_4 resignFirstResponder];
    [self.ticket_name_field_5 resignFirstResponder];
    
    [self.ticket_cost_field_1 resignFirstResponder];
    [self.ticket_cost_field_2 resignFirstResponder];
    [self.ticket_cost_field_3 resignFirstResponder];
    [self.ticket_cost_field_4 resignFirstResponder];
    [self.ticket_cost_field_5 resignFirstResponder];
}
@end


















