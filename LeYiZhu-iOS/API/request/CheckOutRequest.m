//
//  CheckOutRequest.m
//  LeYiZhu-iOS
//
//  Created by smart home on 2016/12/8.
//  Copyright © 2016年 lyz. All rights reserved.
//

#import "CheckOutRequest.h"
#import "CheckOutResponse.h"

@implementation CheckOutRequest

- (NSMutableDictionary *) getHeaders
{
    return self.headers;
}

- (NSMutableDictionary *) getQueryParameters
{
    
    [self.queryParameters setValue:self.fromtype forKey:@"fromtype"];
    [self.queryParameters setValue:self.versioncode forKey:@"versioncode"];
    [self.queryParameters setValue:self.devicenum forKey:@"devicenum"];
    [self.queryParameters setValue:self.orderNo forKey:@"orderNO"];
    
    return self.queryParameters;
}

- (NSMutableDictionary *) getPathParameters
{
    
    return self.pathParameters;
}

- (Class) getResponseClazz
{
    return [CheckOutResponse class];
}

//- (NSString *) getApiUrl
//{
//    return [NSString stringWithFormat:@"%@%@",LYZ_PREFIX,LYZ_CHECKOUT];
//}


@end