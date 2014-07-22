//
//  akm0012_SecondViewController.m
//  Ticket Gate
//
//  Created by Andrew Marshall on 7/16/14.
//  Copyright (c) 2014 Comp_7970_akm0012. All rights reserved.
//

#import "akm0012_SecondViewController.h"

@interface akm0012_SecondViewController ()

// Used to keep track of the number of each ticket
@property int ticket_num_1;
@property int ticket_num_2;
@property int ticket_num_3;
@property int ticket_num_4;
@property int ticket_num_5;

@property float subtotal_ticket_1;
@property float subtotal_ticket_2;
@property float subtotal_ticket_3;
@property float subtotal_ticket_4;
@property float subtotal_ticket_5;

@property float total;

// Used for the cash taken calculator
@property double cash_taken;
@property NSString *cash_taken_string;
@property BOOL decimal_active;

// Used for change
@property double change;

@end

@implementation akm0012_SecondViewController

- (void) viewDidAppear:(BOOL)animated {
    
//    // Update the subtotals in case the user went back and changed the ticket price
//    self.subtotal_ticket_1 = self.ticket_price_1 * self.ticket_num_1;
//    self.subtotal_num_display_1.text = [NSString stringWithFormat:@"%.2f", self.subtotal_ticket_1];
    
    // Update the subtotal
    [self update_subtotal];
    
    // Update the total
    [self update_total];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Set the num of tickets to 0
    self.ticket_num_1 = 0;
    self.ticket_num_2 = 0;
    self.ticket_num_3 = 0;
    self.ticket_num_4 = 0;
    self.ticket_num_5 = 0;
    
    // Set all the subtototals to 0
    self.subtotal_ticket_1 = 0.00;
    self.subtotal_ticket_2 = 0.00;
    self.subtotal_ticket_3 = 0.00;
    self.subtotal_ticket_4 = 0.00;
    self.subtotal_ticket_5 = 0.00;
    
    // Set the inital ticket count to be 0
    self.ticket_num_display_1.text = [NSString stringWithFormat:@"%i", self.ticket_num_1];
    self.ticket_num_display_2.text = [NSString stringWithFormat:@"%i", self.ticket_num_2];
    self.ticket_num_display_3.text = [NSString stringWithFormat:@"%i", self.ticket_num_3];
    self.ticket_num_display_4.text = [NSString stringWithFormat:@"%i", self.ticket_num_4];
    self.ticket_num_display_5.text = [NSString stringWithFormat:@"%i", self.ticket_num_5];
    
    // Load the initial cash taken values
    self.cash_taken_string = @"";
    self.cash_taken = 0;
    self.decimal_active = NO;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clear_everything:(id *)sender {
    
    // Set all the steppers to 0
    self.stepper_1.value = 0;
    self.stepper_2.value = 0;
    self.stepper_3.value = 0;
    self.stepper_4.value = 0;
    self.stepper_5.value = 0;
    
    // Set all the ticket nums to 0
    self.ticket_num_1 = 0;
    self.ticket_num_2 = 0;
    self.ticket_num_3 = 0;
    self.ticket_num_4 = 0;
    self.ticket_num_5 = 0;
    
    // Clear the cash taken field
    [self clear_cash_taken];

    // Update everything
    [self update_ticket_num_displays];
    [self update_subtotal];
    [self update_total];
    [self update_change];
    
}

- (IBAction)stepper_value_changed:(id *)sender {
    
    // Update the internal ticket num count
    self.ticket_num_1 = self.stepper_1.value;
    
    // Update the internal ticket num count
    self.ticket_num_2 = self.stepper_2.value;
    
    // Update the internal ticket num count
    self.ticket_num_3 = self.stepper_3.value;
    
    // Update the internal ticket num count
    self.ticket_num_4 = self.stepper_4.value;
    
    // Update the internal ticket num count
    self.ticket_num_5 = self.stepper_5.value;
    
    
    // Update the ticket num displays
    [self update_ticket_num_displays];
    
    // Update the subtotal
    [self update_subtotal];
    
    // Update the total
    [self update_total];
    
    // Update the Change
    [self update_change];
    
}

// Updates the internal subtotal
- (void) update_subtotal {
    
    self.subtotal_ticket_1 = self.ticket_price_1 * self.ticket_num_1;
    self.subtotal_num_display_1.text = [NSString stringWithFormat:@"%.2f", self.subtotal_ticket_1];
    
    self.subtotal_ticket_2 = self.ticket_price_2 * self.ticket_num_2;
    self.subtotal_num_display_2.text = [NSString stringWithFormat:@"%.2f", self.subtotal_ticket_2];
    
    self.subtotal_ticket_3 = self.ticket_price_3 * self.ticket_num_3;
    self.subtotal_num_display_3.text = [NSString stringWithFormat:@"%.2f", self.subtotal_ticket_3];
    
    self.subtotal_ticket_4 = self.ticket_price_4 * self.ticket_num_4;
    self.subtotal_num_display_4.text = [NSString stringWithFormat:@"%.2f", self.subtotal_ticket_4];
    
    self.subtotal_ticket_5 = self.ticket_price_5 * self.ticket_num_5;
    self.subtotal_num_display_5.text = [NSString stringWithFormat:@"%.2f", self.subtotal_ticket_5];
}

- (void) update_ticket_num_displays {
    
    self.ticket_num_display_1.text = [NSString stringWithFormat:@"%i", self.ticket_num_1];
    self.ticket_num_display_2.text = [NSString stringWithFormat:@"%i", self.ticket_num_2];
    self.ticket_num_display_3.text = [NSString stringWithFormat:@"%i", self.ticket_num_3];
    self.ticket_num_display_4.text = [NSString stringWithFormat:@"%i", self.ticket_num_4];
    self.ticket_num_display_5.text = [NSString stringWithFormat:@"%i", self.ticket_num_5];
    
}

- (void) update_total {
    
    self.total = self.subtotal_ticket_1
    + self.subtotal_ticket_2
    + self.subtotal_ticket_3
    + self.subtotal_ticket_4
    + self.subtotal_ticket_5;
    
    self.total_label.text = [NSString stringWithFormat:@"$%.2f", self.total];
}

// Clears cash taken data when either the 'C' or 'CLEAR ALL' buttons are pushed.
- (void)clear_cash_taken {
    self.cash_taken_string = @"";
    self.cash_taken = 0;
    self.decimal_active = NO;
    self.cash_taken_label.text = [NSString stringWithFormat:@"$%.2f", self.cash_taken];
}

- (IBAction)cash_taken_button_pressed:(UIButton *)sender {
    
    switch (sender.tag) {
        
        // Decimal Point
        case 11:
            if (self.decimal_active == NO) {
                self.cash_taken_string = [NSString stringWithFormat:@"%@%@", self.cash_taken_string, @"."];
                self.decimal_active = YES;
            }
            
            break;
            
        // 'C' clear button
        case 12:
            [self clear_cash_taken];
            break;
            
        // 0 buton
        case 10:
            self.cash_taken_string = [NSString stringWithFormat:@"%@%@", self.cash_taken_string, @"0"];
            break;
            
        // Tag = button value
            
        case 1:
            self.cash_taken_string = [NSString stringWithFormat:@"%@%@", self.cash_taken_string, @"1"];
            break;
            
        case 2:
            self.cash_taken_string = [NSString stringWithFormat:@"%@%@", self.cash_taken_string, @"2"];
            break;
            
        case 3:
            self.cash_taken_string = [NSString stringWithFormat:@"%@%@", self.cash_taken_string, @"3"];
            break;
        
        case 4:
            self.cash_taken_string = [NSString stringWithFormat:@"%@%@", self.cash_taken_string, @"4"];
            break;
        
        case 5:
            self.cash_taken_string = [NSString stringWithFormat:@"%@%@", self.cash_taken_string, @"5"];
            break;
        
        case 6:
            self.cash_taken_string = [NSString stringWithFormat:@"%@%@", self.cash_taken_string, @"6"];
            break;
        
        case 7:
            self.cash_taken_string = [NSString stringWithFormat:@"%@%@", self.cash_taken_string, @"7"];
            break;
        
        case 8:
            self.cash_taken_string = [NSString stringWithFormat:@"%@%@", self.cash_taken_string, @"8"];
            break;
        
        case 9:
            self.cash_taken_string = [NSString stringWithFormat:@"%@%@", self.cash_taken_string, @"9"];
            break;

            
        default:
            break;
    }
    
    self.cash_taken = [self.cash_taken_string doubleValue];
    
    NSLog(@"cash_taken = %f", self.cash_taken);
    
    if (self.decimal_active) {
        self.cash_taken_label.text = [NSString stringWithFormat:@"$%.2f", self.cash_taken];
    }
    
    else {
        self.cash_taken_label.text = [NSString stringWithFormat:@"$%.0f", self.cash_taken];
    }
    
    [self update_change];
}

- (void) update_change {
    
    double change;
    double amt_short;
    
    // Change situation
    if (self.cash_taken - self.total > 0) {
        
        change = self.cash_taken - self.total;
        self.change_display.text = [NSString stringWithFormat:@"$%.2f", change];
        self.change_label.text = @"Change";
        
        // Get the green box UI Image
        UIImage *green_box = [UIImage imageNamed: @"green_square.png"];
        [self.change_UI_Image setImage:green_box];
    }
    
    // Exact payment situation
    else if (self.cash_taken - self.total == 0) {
        
        self.change_display.text = [NSString stringWithFormat:@"$%.2f", 0.00];
        self.change_label.text = @"Change";
        
        // Get the green box UI Image
        UIImage *green_box = [UIImage imageNamed: @"green_square.png"];
        [self.change_UI_Image setImage:green_box];
        
    }
    
    // Short situation
    else {
        
        amt_short = self.total - self.cash_taken;
        self.change_display.text = [NSString stringWithFormat:@"$%.2f", amt_short];
        self.change_label.text = @"Short";
        
        // Get the red box UI Image
        UIImage *red_box = [UIImage imageNamed: @"red_square.png"];
        [self.change_UI_Image setImage:red_box];
        
    }
    
}
@end






























