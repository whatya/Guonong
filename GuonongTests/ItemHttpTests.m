//
//  ItemHttpTests.m
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/20.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ItemHttpService.h"

@interface ItemHttpTests : XCTestCase

@property (nonatomic,strong) ItemHttpService *itemHttpService;

@end

@implementation ItemHttpTests

- (void)setUp {
    [super setUp];
    self.itemHttpService = [[ItemHttpService alloc] init];
}

- (void)tearDown {
    
    [super tearDown];
}

- (void)testPromotionFetch
{
    XCTestExpectation *completionExpectation = [self expectationWithDescription:@"PromotionFetch"];
    [self.itemHttpService promotionFruitsFrom:0 toIndex:3 inCity:@"雅安市" result:^(NSString *errorString, NSArray *fruits) {
        
        XCTAssertNil(errorString);
        
        XCTAssertTrue([fruits isKindOfClass:[NSArray class]]);
        
        XCTAssertGreaterThan(fruits.count,0,@"水果数组为空！");
        
        [completionExpectation fulfill];
        
    }];
    
    [self waitForExpectationsWithTimeout:5.0 handler:nil];
}

- (void)testAllFruitsFetch
{
    XCTestExpectation *completionExpectation = [self expectationWithDescription:@"AllFruitsFetch"];
    [self.itemHttpService allFruitsFrom:0 toIndex:30 inCity:@"雅安市" result:^(NSString *errorString, NSArray *fruits) {
        
        XCTAssertNil(errorString);
        
        XCTAssertTrue([fruits isKindOfClass:[NSArray class]]);
        
        XCTAssertGreaterThan(fruits.count,0,@"水果数组为空！");
        
        [completionExpectation fulfill];
        
    }];
    
    [self waitForExpectationsWithTimeout:5.0 handler:nil];
}

- (void)testFruitDetailFetch
{
    XCTestExpectation *completionExpectation = [self expectationWithDescription:@"FruitDetailFetch"];
    [self.itemHttpService fruitDetailWithId:@"297ebc2d511d914601511da76a92000c" result:^(NSString *errorString, NSDictionary *fruit) {
        
        XCTAssertNil(errorString);
        
        XCTAssertTrue([fruit isKindOfClass:[NSDictionary class]]);
        
        [completionExpectation fulfill];
        
    }];
    
    [self waitForExpectationsWithTimeout:5.0 handler:nil];
}


@end
