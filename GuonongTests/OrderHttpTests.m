//
//  OrderTests.m
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/20.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "OrderHttpService.h"

@interface OrderHttpTests : XCTestCase

@property (nonatomic, strong) OrderHttpService *orderHttpService;

@end

@implementation OrderHttpTests

- (void)setUp {
    [super setUp];
    self.orderHttpService = [[OrderHttpService alloc] init];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testAllStreetsFetch
{
    XCTestExpectation *completionExpectation = [self expectationWithDescription:@"AllStreetsFetch"];
    
    [self.orderHttpService allStreetsFrom:0 toIndex:10 inCity:@"雅安市" result:^(NSString *errorString, NSArray *streets) {
        
        XCTAssertNil(errorString);
        
        XCTAssertTrue([streets isKindOfClass:[NSArray class]]);
        
        XCTAssertGreaterThan(streets.count,0,@"街道数组为空！");
        
        [completionExpectation fulfill];
        
    }];
    
    [self waitForExpectationsWithTimeout:5.0 handler:nil];
}

@end
