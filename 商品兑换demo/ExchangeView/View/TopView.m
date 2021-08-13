//
//  TopView.m
//  商品兑换demo
//
//  Created by p_tyou on 2021/8/5.
//

#import "TopView.h"

@implementation TopView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}
///设置
- (void)setup {
    UIButton *backBtn = [[UIButton alloc]initWithFrame:CGRectMake(10, 42, 40, 40)];
    [self addSubview:backBtn];
    _backBtn = backBtn;
    backBtn.backgroundColor = [UIColor colorWithRed:21.0/255 green:49.0/255 blue:91.0/255 alpha:1.0];
    
    UILabel *titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(60, 42, 100, 40)];
    [self addSubview:titleLabel];
    titleLabel.font = [UIFont boldSystemFontOfSize:22];
    titleLabel.textColor = [UIColor colorWithRed:21.0/255 green:49.0/255 blue:91.0/255 alpha:1.0];
    if (self.isDress) {
        titleLabel.text = @"装扮详情";
    }else{
        titleLabel.text = @"邮货详情";
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
