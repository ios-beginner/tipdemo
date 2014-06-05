//
//  TIPViewController.m
//  tipdemo
//
//  Created by Y.CORP.YAHOO.COM\xuewu on 6/4/14.
//  Copyright (c) 2014 Y.CORP.YAHOO.COM\xuewu. All rights reserved.
//

#import "TIPViewController.h"

@interface TIPViewController ()
@property float tipPercent;
@end

@implementation TIPViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tipLabel.text = @"$0.00";
    self.totalLabel.text = @"$0.00";
    self.tipPercent = 0.1;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTapGesture:(id)sender {
    NSLog(@"Tapping ...");
    float billAmount = [self.billField.text floatValue];
    float tipAmount = billAmount * self.tipPercent;
    float totalAmount = billAmount + tipAmount;
    
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tipAmount];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", totalAmount];
    
    [self.view endEditing:YES];
}

- (IBAction)billPercent:(id)sender {
    NSLog(@"Selected ...");
    int clickedSegment = [sender selectedSegmentIndex];
    switch (clickedSegment) {
        case 0:
            NSLog(@"10");
            self.tipPercent = 0.1;
            break;
        case 1:
            NSLog(@"15");
            self.tipPercent = 0.15;
            break;
        case 2:
            NSLog(@"20");
            self.tipPercent = 0.2;
            break;
        default:
            NSLog(@"Error");
            break;
    }
    float billAmount = [self.billField.text floatValue];
    float tipAmount = billAmount * self.tipPercent;
    float totalAmount = billAmount + tipAmount;

    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tipAmount];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", totalAmount];


    [self.view endEditing:YES];
}

@end
