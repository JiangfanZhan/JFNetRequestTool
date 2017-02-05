//
//  AFAppDotNetAPIClient.h
//  JFNetRequestTool
//
//  Created by JiangfanJFan on 16/7/25.
//  Copyright © 2016年 JiangfanJFan. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface AFAppDotNetAPIClient : AFHTTPSessionManager

+ (instancetype)sharedClient;

@end
