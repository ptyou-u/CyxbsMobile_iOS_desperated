//
//  BottomView.m
//  商品兑换demo
//
//  Created by p_tyou on 2021/8/5.
//

#import "BottomView.h"

@implementation BottomView

- (instancetype)initWithBalance:(Balance *)balance {
    if (self = [super init]) {
        
    }
    return self;
}

+ (instancetype)BottomViewWithBalance:(Balance *)balance {
    return [[self alloc]initWithBalance:balance];
}

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
    UIImageView *iconView = [[UIImageView alloc]init];
    [self addSubview:iconView];
    _iconView = iconView;
    iconView.backgroundColor = [UIColor colorWithRed:81.0/255 green:119.0/255 blue:255.0/255 alpha:1.0];
    iconView.frame = CGRectMake(20, 10, 21, 21);
    
    UILabel *balanceLabel = [[UILabel alloc]init];
    [self addSubview:balanceLabel];
    _balanceLabel = balanceLabel;
    balanceLabel.font = [UIFont systemFontOfSize:11];
    balanceLabel.textColor = [UIColor colorWithRed:21.0/255 green:49.0/255 blue:91.0/255 alpha:0.4];
    balanceLabel.frame = CGRectMake(20, 35, 300, 20);
    
    UIButton *exchangeBtn = [[UIButton alloc]init];
    [self addSubview:exchangeBtn];
    _exchangeBtn = exchangeBtn;
//    exchangeBtn.backgroundColor = [UIColor colorWithRed:72.0/255 green:65.0/255 blue:226.0/255 alpha:1.0];
    [exchangeBtn setBackgroundColor:[UIColor colorWithRed:93.0/255 green:93.0/255 blue:247.0/255 alpha:1.0]];
    exchangeBtn.layer.cornerRadius = 20;
    [exchangeBtn setTitle:@"兑换" forState:UIControlStateNormal];
    exchangeBtn.frame = CGRectMake(260, 10, 100, 40);
    
    UILabel *priceLabel = [[UILabel alloc]init];
    [self addSubview:priceLabel];
    _priceLabel = priceLabel;
    priceLabel.textColor = [UIColor colorWithRed:81.0/255 green:119.0/255 blue:255.0/255 alpha:1.0];
    priceLabel.font = [UIFont systemFontOfSize:18];
    priceLabel.frame = CGRectMake(46, 10, 29, 22);
    
}






@end
