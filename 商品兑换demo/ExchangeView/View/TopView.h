//
//  TopView.h
//  商品兑换demo
//
//  Created by p_tyou on 2021/8/5.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TopView : UINavigationBar

@property (nonatomic, assign) bool isDress;///是否是装扮
@property (nonatomic, weak) UIButton *backBtn;///返回按钮

@end

NS_ASSUME_NONNULL_END
