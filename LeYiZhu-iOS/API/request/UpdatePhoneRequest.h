//
//  UpdatePhoneRequest.h
//  LeYiZhu-iOS
//
//  Created by smart home on 2016/12/9.
//  Copyright © 2016年 lyz. All rights reserved.
//

#import "IRequest.h"

@interface UpdatePhoneRequest : AbstractRequest


@property (nonatomic, copy) NSString *versioncode;

@property (nonatomic, copy) NSString *devicenum;

@property (nonatomic, copy) NSString *fromtype;

@property (nonatomic, copy) NSString *appUserID;

@property (nonatomic, copy) NSString *phone;

@property (nonatomic, copy) NSString *captcha;



@end