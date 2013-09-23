//
//  CounterViewControllerTest.m
//  TDD
//
//  Created by Sandeep on 9/23/13.
//  Copyright (c) 2013 com. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CounterViewController.h"

@interface CounterViewControllerTest : XCTestCase
@property(nonatomic, strong) CounterViewController *cvt;
@end


@implementation CounterViewControllerTest
@synthesize cvt;

- (void)setUp{
  cvt = [[CounterViewController alloc] init];
  [cvt view];
}

- (void)testCountLabelBeConnected{
  XCTAssertNotNil([cvt countLabel], @"Should not be connected.");
}

- (void)testInitialLabelCountShouldBeZero{
  XCTAssertEqualObjects([[cvt countLabel] text], @"0", @"Should be 0 initially.");
}

- (void)testPlusButtonShouldBeConnected{
  XCTAssertNotNil([cvt plusButton], @"Plus button should be connected.");
  
}

- (void)testPlusButtonAction{
  UIButton *plusButton = [cvt plusButton];
  NSArray *actions =  [plusButton actionsForTarget:cvt forControlEvent:UIControlEventTouchUpInside];
  XCTAssertTrue([actions containsObject:@"incrementCount:"], @"The button should trigger incrementCount: aciton.");
}


- (void)testIncrementCountShouldAddOneToCountLabel{
  UIButton *plusButton = [cvt plusButton];
  [plusButton sendActionsForControlEvents:UIControlEventTouchUpInside];
  XCTAssertEqualObjects([[cvt countLabel] text], @"1", @"Count should now be increased to 1.");
}

- (void)testIncrementCountNTimesShouldAddNToCountLabel{
  UIButton *plusButton = [cvt plusButton];

  for(int i=1; i < 10; i++){
    [plusButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    NSString *expectation = [NSString stringWithFormat:@"%d", i];
    XCTAssertEqualObjects([[cvt countLabel] text], expectation, @"Count should be increased once every time button tapped.");
  }
}

- (void)testMinusButtonShouldBeConnected{
  XCTAssertNotNil([cvt minusButton], @"Minus button should be connected.");
}

- (void)testMinusButtonAction{
  NSArray *actions = [[cvt minusButton] actionsForTarget:cvt forControlEvent:UIControlEventTouchUpInside];
  XCTAssertTrue([actions containsObject:@"decrementCount:"], @"The button should trigger decrementCount: action.");
}

- (void)testDecrementCountShouldDecreaseOneToCountLabel{
  UIButton *minusButton = [cvt minusButton];
  [minusButton sendActionsForControlEvents:UIControlEventTouchUpInside];
  XCTAssertEqualObjects([[cvt countLabel] text], @"-1", @"Count should now be decresed to -1.");
}

- (void)testDecrementCountNTimesShouldDecreaseTheNumberByNTimes{
  UIButton *minusButton = [cvt minusButton];
  for(int i = 1; i < 10; i++){
    [minusButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    NSString *expectation = [NSString stringWithFormat:@"-%d", i];
    XCTAssertEqualObjects([[cvt countLabel] text], expectation, @"Count should be decremented once everytime.");
  }
}



- (void)tearDown{
  cvt = nil;
  [super tearDown];
}

@end
