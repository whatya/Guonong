//
//  HttpManager.h
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Macros.h"

@interface HttpManager : NSObject

+ (HttpManager*)sharedManager;

- (void)requestUrl:(NSString*)urlString withParameterString:(NSString*)parameter andCallback:(JsonCallback)callback;

@end
