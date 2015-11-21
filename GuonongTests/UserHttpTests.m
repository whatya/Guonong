//
//  UserHttpTests.m
//  Guonong
//
//  Created by 张宝 on 15/11/21.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UserHttpService.h"

@interface UserHttpTests : XCTestCase
@property (nonatomic,strong) UserHttpService *userHttpService;
@end

@implementation UserHttpTests

- (void)setUp {
    [super setUp];
    self.userHttpService = [[UserHttpService alloc] init];
}

- (void)tearDown {
    
    [super tearDown];
    
}

- (void)testOpenEnroll
{ShowLog
    XCTestExpectation *completionExpectation = [self expectationWithDescription:@"OpenEnroll"];
    
    [self.userHttpService newUserWithOpenId:@"888810000025303"
                                   nickName:@"whatya"
                                     gender:1
                                        tel:@"18200127796"
                                   password:@"123456"
                                     result:^(ResponseCode status, NSDictionary *enrolledUser) {
                                         
                                         XCTAssertEqual(status, SUCCESS);
                                         
                                         XCTAssertTrue([enrolledUser isKindOfClass:[NSDictionary class]]);
                                         
                                         [completionExpectation fulfill];
        
                                     }];
    [self waitForExpectationsWithTimeout:5.0 handler:nil];
}

- (void)testEnroll
{ShowLog
    XCTestExpectation *completionExpectation = [self expectationWithDescription:@"Enroll"];
    
    [self.userHttpService newUserWithTel:@"18200127796" password:@"1234568" result:^(ResponseCode status, NSDictionary *enrolledUser) {
        
        XCTAssertEqual(status, SUCCESS);
        
        XCTAssertTrue([enrolledUser isKindOfClass:[NSDictionary class]]);

        [completionExpectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:5.0 handler:nil];
}

@end
