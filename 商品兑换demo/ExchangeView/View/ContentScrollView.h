//
//  ContentScrollView.h
//  商品兑换demo
//
//  Created by p_tyou on 2021/8/5.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class Goods;
@interface ContentScrollView : UIScrollView 

@property (nonatomic, strong) Goods *goods;///商品模型

@property (nonatomic, weak) UIScrollView *picScrollView;///图片轮播器
@property (nonatomic, weak) UILabel *nameLabel;///名字
@property (nonatomic, weak) UILabel *textLabel;///内容
@property (nonatomic, weak) UILabel *lastdayLabel;///有效期
@property (nonatomic, weak) UILabel *tipsContentLabel;///说明Label
@property (weak, nonatomic)  UIPageControl *pageControl;///分页控制器

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)goodsWithDict:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
