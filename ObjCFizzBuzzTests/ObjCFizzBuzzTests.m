//
//  ObjCFizzBuzzTests.m
//  ObjCFizzBuzzTests
//
//  Created by Bruno Gomez on 3/12/22.
//

#import <XCTest/XCTest.h>
#import "FizzBuzz.h"

@interface ObjCFizzBuzzTests : XCTestCase

@end

@implementation ObjCFizzBuzzTests
FizzBuzz *object = NULL;
- (void)setUp {
    object = [[FizzBuzz alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    object = NULL;
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}
- (void)testIsDivisibleBy3 {
    XCTAssertEqual([object isDivisibleBy3:3], YES);
    XCTAssertEqual([object isDivisibleBy3:5], NO);
}

- (void)testIsDivisibleBy5 {
    XCTAssertEqual([object isDivisibleBy5:3], NO);
    XCTAssertEqual([object isDivisibleBy5:5], YES);
}

- (void)testIsDivisibleBy3and5 {
    XCTAssertEqual([object isDivisibleBy3and5:3], NO);
    XCTAssertEqual([object isDivisibleBy3and5:5], NO);
    XCTAssertEqual([object isDivisibleBy3and5:15], YES);
}

- (void)testCheckNum {
    XCTAssertEqualObjects([object checkNum:3], @"Fizz");
    XCTAssertEqualObjects([object checkNum:5], @"Buzz");
    XCTAssertEqualObjects([object checkNum:15], @"FizzBuzz");
    XCTAssertEqualObjects([object checkNum:14], @"14");
}

@end
