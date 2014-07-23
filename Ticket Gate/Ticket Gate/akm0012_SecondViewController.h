//
//  akm0012_SecondViewController.h
//  Ticket Gate
//
//  Created by Andrew Marshall on 7/16/14.
//  Copyright (c) 2014 Comp_7970_akm0012. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface akm0012_SecondViewController : UIViewController

// Used to keep track of the number of each ticket
@property int ticket_num_1;
@property int ticket_num_2;
@property int ticket_num_3;
@property int ticket_num_4;
@property int ticket_num_5;

// UI compnents needed for ticket type #1 (this will always be active)
@property (weak, nonatomic) IBOutlet UIStepper *stepper_1;
@property (weak, nonatomic) IBOutlet UILabel *ticket_num_display_1;
@property (weak, nonatomic) IBOutlet UILabel *ticket_label_1;
@property (weak, nonatomic) IBOutlet UILabel *ticket_subtitle_1;
@property (weak, nonatomic) IBOutlet UILabel *subtotal_label_1;
@property (weak, nonatomic) IBOutlet UILabel *subtotal_num_display_1;

// All the UI components for ticket type #2
@property (weak, nonatomic) IBOutlet UIImageView *ticket_row_image_view_2;
@property (weak, nonatomic) IBOutlet UIStepper *stepper_2;
@property (weak, nonatomic) IBOutlet UIImageView *white_num_background_2;
@property (weak, nonatomic) IBOutlet UILabel *ticket_num_display_2;
@property (weak, nonatomic) IBOutlet UILabel *ticket_label_2;
@property (weak, nonatomic) IBOutlet UILabel *ticket_subtitle_2;
@property (weak, nonatomic) IBOutlet UILabel *subtotal_label_2;
@property (weak, nonatomic) IBOutlet UILabel *subtotal_num_display_2;
@property (weak, nonatomic) IBOutlet UILabel *subtotal_extras_2;

// All the UI components for ticket type #3
@property (weak, nonatomic) IBOutlet UIImageView *ticket_row_image_view_3;
@property (weak, nonatomic) IBOutlet UIStepper *stepper_3;
@property (weak, nonatomic) IBOutlet UIImageView *white_num_background_3;
@property (weak, nonatomic) IBOutlet UILabel *ticket_num_display_3;
@property (weak, nonatomic) IBOutlet UILabel *ticket_label_3;
@property (weak, nonatomic) IBOutlet UILabel *ticket_subtitle_3;
@property (weak, nonatomic) IBOutlet UILabel *subtotal_label_3;
@property (weak, nonatomic) IBOutlet UILabel *subtotal_num_display_3;
@property (weak, nonatomic) IBOutlet UILabel *subtotal_extras_3;

// All the UI components for ticket type #4
@property (weak, nonatomic) IBOutlet UIImageView *ticket_row_image_view_4;
@property (weak, nonatomic) IBOutlet UIStepper *stepper_4;
@property (weak, nonatomic) IBOutlet UIImageView *white_num_background_4;
@property (weak, nonatomic) IBOutlet UILabel *ticket_num_display_4;
@property (weak, nonatomic) IBOutlet UILabel *ticket_label_4;
@property (weak, nonatomic) IBOutlet UILabel *ticket_subtitle_4;
@property (weak, nonatomic) IBOutlet UILabel *subtotal_label_4;
@property (weak, nonatomic) IBOutlet UILabel *subtotal_num_display_4;
@property (weak, nonatomic) IBOutlet UILabel *subtotal_extras_4;

// All the UI components for ticket type #5
@property (weak, nonatomic) IBOutlet UIImageView *ticket_row_image_view_5;
@property (weak, nonatomic) IBOutlet UIStepper *stepper_5;
@property (weak, nonatomic) IBOutlet UIImageView *white_num_background_5;
@property (weak, nonatomic) IBOutlet UILabel *ticket_num_display_5;
@property (weak, nonatomic) IBOutlet UILabel *ticket_label_5;
@property (weak, nonatomic) IBOutlet UILabel *ticket_subtitle_5;
@property (weak, nonatomic) IBOutlet UILabel *subtotal_label_5;
@property (weak, nonatomic) IBOutlet UILabel *subtotal_num_display_5;
@property (weak, nonatomic) IBOutlet UILabel *subtotal_extras_5;

// Ticket prices for each category
@property float ticket_price_1;
@property float ticket_price_2;
@property float ticket_price_3;
@property float ticket_price_4;
@property float ticket_price_5;

// The Total label
@property (weak, nonatomic) IBOutlet UILabel *total_label;

// The Cash Taken label
@property (weak, nonatomic) IBOutlet UILabel *cash_taken_label;

// The Change UI Components
@property (weak, nonatomic) IBOutlet UILabel *change_display;
@property (weak, nonatomic) IBOutlet UILabel *change_label;
@property (weak, nonatomic) IBOutlet UIImageView *change_UI_Image;



// Called when any of the Cash Taken buttons are pressed
- (IBAction)cash_taken_button_pressed:(UIButton *)sender;


// Called when the CLEAR ALL button is pressed
- (IBAction)clear_everything:(id *)sender;

// Called whenever a stepper is pressed
- (IBAction)stepper_value_changed:(id *)sender;
@end
