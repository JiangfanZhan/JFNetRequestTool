//
//  AFAppDotNetAPIClient.h
//  PrivateDoctor
//
//  Created by Bert on 16/7/25.
//  Copyright © 2016年 guokang. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface AFAppDotNetAPIClient : AFHTTPSessionManager

+ (instancetype)sharedClient;

@end
