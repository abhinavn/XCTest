//
//  CounterViewController.h
//  TDD
//
//  Created by Sandeep on 9/23/13.
//  Copyright (c) 2013 com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CounterViewController : UIViewController
@property (nonatomic, weak) IBOutlet UILabel *countLabel;
@property (nonatomic, weak) IBOutlet UIButton *plusButton;
@property (nonatomic, weak) IBOutlet UIButton *minusButton;

- (IBAction)decrementCount:(id)sender;
- (IBAction)incrementCount:(id)sender;
@end
