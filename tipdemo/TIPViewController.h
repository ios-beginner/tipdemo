//
//  TIPViewController.h
//  tipdemo
//
//  Created by Y.CORP.YAHOO.COM\xuewu on 6/4/14.
//  Copyright (c) 2014 Y.CORP.YAHOO.COM\xuewu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TIPViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UITextField *billField;
- (IBAction)onTapGesture:(id)sender;
- (IBAction)billPercent:(id)sender;
@end;

