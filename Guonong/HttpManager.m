//
//  HttpManager.m
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "HttpManager.h"

@interface HttpManager ()

@property (nonatomic,strong) NSURLSession *session;

@end

@implementation HttpManager

#pragma mark- 单利
+ (HttpManager *)sharedManager
{
    static HttpManager *sharedManagerInstance = nil;
    static dispatch_once_t  singleton;
    dispatch_once(&singleton, ^{
        sharedManagerInstance = [[self alloc] init];
    });
    return sharedManagerInstance;
}

#pragma mark- 惰性初始化
- (NSURLSession *)session
{
    if (!_session) {
        _session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]
                                                 delegate:nil
                                            delegateQueue:[NSOperationQueue mainQueue]];
    }
    return _session;
}

#pragma mark- 发送请求
- (void)requestUrl:(NSString *)urlString withParameterString:(NSString *)parameter
       andCallback:(JsonCallback)callback
{
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
    request.HTTPMethod = @"POST";
    NSData *data = [parameter dataUsingEncoding:NSUTF8StringEncoding];
    
    [self.session uploadTaskWithRequest:request fromData:data completionHandler:^(NSData * data, NSURLResponse * response, NSError *error) {
        
        if (error) { callback(NO,nil,error); return;}
        
        NSError     *jsonError = nil;
        NSString    *GBKString = [[NSString alloc] initWithData:data encoding:GBKEncoding];
        NSData      *UTF8Data  = [GBKString dataUsingEncoding:NSUTF8StringEncoding];
        
        NSMutableDictionary * jsonValue = [NSJSONSerialization JSONObjectWithData:UTF8Data
                                                                          options:kNilOptions
                                                                            error:&jsonError];
        
        if (jsonError) { callback(NO,nil,jsonError); return;}
        
        callback(YES,jsonValue,nil);
        
    }];
}

@end
