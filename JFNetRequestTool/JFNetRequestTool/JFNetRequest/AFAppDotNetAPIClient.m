//
//  AFAppDotNetAPIClient.m
//  JFNetRequestTool
//
//  Created by JiangfanJFan on 16/7/25.
//  Copyright © 2016年 JiangfanJFan. All rights reserved.
//

#import "AFAppDotNetAPIClient.h"

@implementation AFAppDotNetAPIClient
static NSString * const AFAppDotNetAPIBaseURLString = @"http://baidu.com";

+ (instancetype)sharedClient {
    static AFAppDotNetAPIClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[AFAppDotNetAPIClient alloc] initWithBaseURL:[NSURL URLWithString:AFAppDotNetAPIBaseURLString]];
        _sharedClient.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
        _sharedClient.securityPolicy.allowInvalidCertificates = YES;
        
    });
    
    return _sharedClient;
}

@end
