//
//  UserDataService.h
//  Guonong
//
//  Created by 张宝 on 15/10/31.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserDataService : NSObject

- (void)loginWithUsername:(NSString*)username
                 password:(NSString*)password
                   result:(void(^)(BOOL success,NSString *errorString,NSDictionary *data))callback;

@end
