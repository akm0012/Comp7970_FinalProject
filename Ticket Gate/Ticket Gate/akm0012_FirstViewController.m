//
//  akm0012_FirstViewController.m
//  Ticket Gate
//
//  Created by Andrew Marshall on 7/16/14.
//  Copyright (c) 2014 Comp_7970_akm0012. All rights reserved.
//

#import "akm0012_FirstViewController.h"

@interface akm0012_FirstViewController ()

@property BOOL test;

@end

@implementation akm0012_FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.tabBarController.delegate = self;
    
    self.second_view_controller = [[akm0012_SecondViewController alloc] init];
    
    self.ticket_1_active = self.ticket_type_switch_1.isOn;
    
    
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
                self.ticket_1_active = YES;
                
            }
            else {
                // Make ticket type 1 hidden
                self.ticket_1_active = NO;
                
            }
            break;
            
        default:
            break;
    }
    
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    self.second_view_controller = (akm0012_SecondViewController *) [tabBarController.viewControllers objectAtIndex:1];
    
//    self.second_view_controller.ticket_row_image_view_1.hidden = self.test;
    
    if (self.ticket_1_active) {
        self.second_view_controller.ticket_row_image_view_1.hidden = NO;
    }
    
    else {
        self.second_view_controller.ticket_row_image_view_1.hidden = YES;
    }
}
@end
