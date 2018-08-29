//
//  FunctionalObjCTests.m
//  FunctionalObjCTests
//
//  Created by John on 8/29/18.
//  Copyright © 2018 John. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface FunctionalObjCTests : XCTestCase

@property (nonatomic) ViewController *viewController;

@end

@implementation FunctionalObjCTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.viewController = [[ViewController alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testNSNumberAddition {
    NSNumber *firstNumber = @7;
    NSNumber *secondNumber = @11;
    NSNumber *answer = [self.viewController addNSNumber:firstNumber secondNumber:secondNumber];
    NSNumber *expectedAns = @18;
    XCTAssertEqualObjects(answer,expectedAns);
}


@end
