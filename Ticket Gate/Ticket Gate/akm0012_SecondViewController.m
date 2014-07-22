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

@end

@implementation akm0012_SecondViewController

- (void) viewDidAppear:(BOOL)animated {
    
    // Update the subtotals in case the user went back and changed the ticket price
    self.subtotal_ticket_1 = self.ticket_price_1 * self.ticket_num_1;
    self.subtotal_num_display_1.text = [NSString stringWithFormat:@"%.2f", self.subtotal_ticket_1];
    
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

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*  Here we need to update:
    - ticket_num_display
    - subtotal_num_display
    - Total
 */
- (IBAction)stepper_pressed:(UIStepper *)sender {
    
    // We check the tag to see which ticket was incremented
    switch (sender.tag) {
        case 1:
            
            // Update the internal ticket num count
            self.ticket_num_1 = self.stepper_1.value;
            
            // Update the UI ticket num display
            self.ticket_num_display_1.text = [NSString stringWithFormat:@"%i", self.ticket_num_1];
            
            break;
            
        default:
            break;
    }
    
    // Update the subtotal
    [self update_subtotal];
    
    // Update the total
    [self update_total];
    
}

// Updates the internal subtotal
- (void) update_subtotal {
    
    self.subtotal_ticket_1 = self.ticket_price_1 * self.ticket_num_1;
    self.subtotal_num_display_1.text = [NSString stringWithFormat:@"%.2f", self.subtotal_ticket_1];
    
    self.subtotal_ticket_2 = self.ticket_price_2 * self.ticket_num_2;
    self.subtotal_num_display_2.text = [NSString stringWithFormat:@"%.2f", self.subtotal_ticket_2];
    
    self.subtotal_ticket_3 = self.ticket_price_1 * self.ticket_num_3;
    self.subtotal_num_display_3.text = [NSString stringWithFormat:@"%.2f", self.subtotal_ticket_3];
    
    self.subtotal_ticket_4 = self.ticket_price_1 * self.ticket_num_4;
    self.subtotal_num_display_4.text = [NSString stringWithFormat:@"%.2f", self.subtotal_ticket_4];
    
    self.subtotal_ticket_5 = self.ticket_price_1 * self.ticket_num_5;
    self.subtotal_num_display_5.text = [NSString stringWithFormat:@"%.2f", self.subtotal_ticket_5];
}

- (void) update_total {
    
    self.total = self.subtotal_ticket_1
    + self.subtotal_ticket_2
    + self.subtotal_ticket_3
    + self.subtotal_ticket_4
    + self.subtotal_ticket_5;
    
    self.total_label.text = [NSString stringWithFormat:@"$%.2f", self.total];
}
@end






























