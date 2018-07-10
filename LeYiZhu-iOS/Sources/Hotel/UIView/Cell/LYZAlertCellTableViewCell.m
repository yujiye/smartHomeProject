//
//  LYZAlertCellTableViewCell.m
//  LeYiZhu-iOS
//
//  Created by L on 2018/2/7.
//  Copyright © 2018年 乐易住智能科技. All rights reserved.
//

#import "LYZAlertCellTableViewCell.h"
#import "Masonry.h"

@interface LYZAlertCellTableViewCell()
@property (nonatomic, strong) UIImageView *arrowView;

@end

static CGFloat _OrderHotelDateHeight = 35.5f;

@implementation LYZAlertCellTableViewCell


- (void)setupCell {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)buildSubview {
    //凌晨时段提醒
    _arrowView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, LYZAlertCellTableViewCell.cellHeight)];
    _arrowView.image = [UIImage imageNamed:@"warm_noti"];
    UILabel *warmLabel = [[UILabel alloc]init];
    warmLabel.text = @"务必填写身份证号和姓名，以免影响入住！";
    warmLabel.textColor = [UIColor whiteColor];
    warmLabel.font = [UIFont fontWithName:LYZTheme_Font_Regular size:14.0];
    [self.arrowView addSubview:warmLabel];
    [warmLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(DefaultLeftSpace);
        make.centerY.mas_equalTo(self.arrowView.mas_centerY);
        make.right.mas_equalTo(-20);
        make.height.mas_equalTo(LYZAlertCellTableViewCell.cellHeight);
    }];
    UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [closeButton setImage:[UIImage imageNamed:@"closeImage"] forState:UIControlStateNormal];
    [self.arrowView addSubview:closeButton];
    [closeButton addTarget:self action:@selector(closeWarm) forControlEvents:UIControlEventTouchUpInside];
    [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-5);
        make.centerY.mas_equalTo(self.arrowView.mas_centerY).mas_equalTo(0);
        make.width.height.mas_equalTo(20);
    }];
    //    _arrowView.layer.mask = arrowLayer;
    [self addSubview:self.arrowView];
}

- (void)closeWarm{
    
}

- (void)loadContent {
    
}

- (void)selectedEvent {
    _OrderHotelDateHeight = 35.5;
}

#pragma mark - class property.

+ (void)setCellHeight:(CGFloat)cellHeight {
    
    _OrderHotelDateHeight = cellHeight;
    
}

+ (CGFloat)cellHeight {
    return _OrderHotelDateHeight;
}
@end