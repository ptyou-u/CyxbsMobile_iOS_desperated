//
//  PopupView.m
//  商品兑换demo
//
//  Created by p_tyou on 2021/8/6.
//

#import "PopupView.h"

#import <Masonry/Masonry.h>

@implementation PopupView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIView *grayView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
        [self addSubview:grayView];
        _grayView = grayView;
        grayView.backgroundColor = [UIColor colorWithWhite:0.1 alpha:0.8];
        
        UIView *whiteView = [[UIView alloc]init];
        [grayView addSubview:whiteView];
        _whiteView = whiteView;
        [whiteView  mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.width.mas_equalTo(255);
                    make.height.mas_equalTo(178);
                    make.centerX.equalTo(grayView);
                    make.centerY.equalTo(grayView);
        }];
        whiteView.backgroundColor = [UIColor whiteColor];
        whiteView.layer.cornerRadius = 20;
        
        UIButton *cancleBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        _cancleBtn = cancleBtn;
        [whiteView addSubview:cancleBtn];
        cancleBtn.frame = CGRectMake(26, 110, 93, 34);
        cancleBtn.layer.cornerRadius = 18;
        cancleBtn.backgroundColor = [UIColor colorWithRed:195.0/255 green:212.0/255 blue:238.0/255 alpha:1.0];
        [cancleBtn setTitle:@"取消" forState:UIControlStateNormal];
        [cancleBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        
        UIButton *comfirmBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        [whiteView addSubview:comfirmBtn];
        _comfirmBtn = comfirmBtn;
        comfirmBtn.frame = CGRectMake(138, 110, 93, 34);
        comfirmBtn.layer.cornerRadius = 18;
        comfirmBtn.backgroundColor = [UIColor colorWithRed:74.0/255 green:68.0/255 blue:228.0/255 alpha:1.0];
        [comfirmBtn setTitle:@"确定" forState:UIControlStateNormal];
        [comfirmBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        
    }
    return self;
}

@end
