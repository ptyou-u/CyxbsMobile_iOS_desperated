//
//  BottomView.h
//  商品兑换demo
//
//  Created by p_tyou on 2021/8/5.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class Balance;
@interface BottomView : UIView

@property (nonatomic, strong) Balance *balance;///余额模型

@property (nonatomic, weak) UIImageView *iconView;///邮豆图标框
@property (nonatomic, weak) UILabel *balanceLabel;///余额label
@property (nonatomic, strong) UIButton *exchangeBtn;///兑换按钮
@property (nonatomic, weak) UILabel *priceLabel;///价格Label

- (instancetype)initWithBalance: (Balance *)balance;
+ (instancetype)BottomViewWithBalance: (Balance *)balance;

@end

NS_ASSUME_NONNULL_END
