//
//  LYZCommentListViewController.h
//  LeYiZhu-iOS
//
//  Created by xyg on 2018/1/19.
//  Copyright © 2018年 乐易住智能科技. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LYZCommentListViewController : UIViewController

@property (nonatomic, copy) NSString *hotelId;

@property (nonatomic, copy) NSString *averageScore;

- (void)showInViewController:(UIViewController *)vc;


@end
