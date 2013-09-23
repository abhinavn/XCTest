//
//  CounterViewController.m
//  TDD
//
//  Created by Sandeep on 9/23/13.
//  Copyright (c) 2013 com. All rights reserved.
//

#import "CounterViewController.h"

@interface CounterViewController ()

@end

@implementation CounterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  return [self init];
}

- (id)init{
  if(self = [super initWithNibName:@"CounterView" bundle:[NSBundle mainBundle]]){
    
  }
  return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)incrementCount:(id)sender{
  NSInteger count = [[self.countLabel text ] integerValue];
  count += 1;
  [self.countLabel setText:[NSString stringWithFormat:@"%ld", count]];
}

- (void)decrementCount:(id)sender{
  NSInteger count = [[self.countLabel text] integerValue];
  count -= 1;
  [self.countLabel setText:[NSString stringWithFormat:@"%ld", count]];
}

@end
