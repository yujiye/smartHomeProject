//
//  GetHotelCommentResponse.m
//  LeYiZhu-iOS
//
//  Created by 陈 雪峰 on 16/12/3.
//  Copyright © 2016年 lyz. All rights reserved.
//

#import "GetHotelCommentResponse.h"

@implementation GetHotelCommentResponse

+(NSDictionary *) JSONKeyPathsByPropertyKey {
    return @{
             @"baseComment":@"data"
             };
}

+ (NSValueTransformer *)baseCommentJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[BaseCommentModel class]];
}

@end