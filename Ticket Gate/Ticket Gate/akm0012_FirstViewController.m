//
//  akm0012_FirstViewController.m
//  Ticket Gate
//
//  Created by Andrew Marshall on 7/16/14.
//  Copyright (c) 2014 Comp_7970_akm0012. All rights reserved.
//

#import "akm0012_FirstViewController.h"
#import "akm0012_SecondViewController.h"

@interface akm0012_FirstViewController ()

@property (nonatomic, strong) akm0012_SecondViewController *second_view_controller;

@end

@implementation akm0012_FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.second_view_controller = [[akm0012_SecondViewController alloc] init];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)hide_unhide_ticket_row:(UISwitch *)sender {
    
    switch (sender.tag) {
        case 1:
            // Make ticket type 1 unhidden
            if (sender.isOn) {
                // Make ticket type 1 unhidden
                int i = 0;
                
            }
            else {
                // Make ticket type 1 hidden
                int j = 0;
                [self.second_view_controller hide_ticket_view:1];
                
//                self.second_view_controller
                
            }
            break;
            
        default:
            break;
    }
    
}
@end
