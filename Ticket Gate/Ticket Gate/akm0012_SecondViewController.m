//
//  akm0012_SecondViewController.m
//  Ticket Gate
//
//  Created by Andrew Marshall on 7/16/14.
//  Copyright (c) 2014 Comp_7970_akm0012. All rights reserved.
//

#import "akm0012_SecondViewController.h"

@interface akm0012_SecondViewController ()

@property BOOL test_1;


@end

@implementation akm0012_SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    if (self.test_1) {
        self.ticket_row_image_view_1.hidden = YES;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)hide_ticket_view:(int)ticket_to_hide
{
    
    self.ticket_row_image_view_1.hidden = YES;
    
    self.test_1 = YES;
    
    
    
}

@end
