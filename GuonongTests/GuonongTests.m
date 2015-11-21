//
//  GuonongTests.m
//  GuonongTests
//
//  Created by 张宝 on 15/10/21.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "HttpManager.h"

@interface GuonongTests : XCTestCase

@end

@implementation GuonongTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testHttpManagerRequest {
    XCTestExpectation *completionExpectation = [self expectationWithDescription:@"HttpManager Request"];
    
    [[HttpManager sharedManager] requestUrl:@"http://123.56.103.186:8080/GuoNongServer/Fruit/findRecos"
                        withParameterString:@"data={'start':0,'max':3,'city':'雅安市'}"
                                andCallback:^(ResponseCode status,NSArray* fruits) {
                                    
                                    XCTAssertEqual([fruits isKindOfClass:[NSArray class]], status == SUCCESS);
                                    
                                    [completionExpectation fulfill];
                                    
                                    }];
    
    [self waitForExpectationsWithTimeout:5.0 handler:nil];
}


@end
