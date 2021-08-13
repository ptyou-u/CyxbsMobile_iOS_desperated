//
//  PopupView.h
//  商品兑换demo
//
//  Created by p_tyou on 2021/8/6.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PopupView : UIView

@property (nonatomic, weak) UIView *grayView;///灰弹窗
@property (nonatomic, weak) UIView *whiteView;///白弹窗
@property (nonatomic, weak) UIButton *cancleBtn;///取消按钮
@property (nonatomic, weak) UIButton *comfirmBtn;///确认按钮

@end

NS_ASSUME_NONNULL_END
