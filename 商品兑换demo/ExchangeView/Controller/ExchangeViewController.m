//
//  ExchangeViewController.m
//  商品兑换demo
//
//  Created by p_tyou on 2021/8/5.
//

#import "ExchangeViewController.h"

//Views
#import "TopView.h"
#import "ContentScrollView.h"
#import "BottomView.h"
#import "PopupView.h"

#import <Masonry/Masonry.h>

#define iPhoneScreenWidth [UIScreen mainScreen].bounds.size.width
#define iPhoneScreenHeight [UIScreen mainScreen].bounds.size.height

@interface ExchangeViewController () <UIScrollViewDelegate>

@property (nonatomic, weak) PopupView *popupView;
@property (nonatomic, strong) ContentScrollView *contentView;

@end

@implementation ExchangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
    [self addTopView];
    [self addContentView];
    [self addBottomView];
    
}
///顶部
- (void)addTopView {
    TopView *topView = [[TopView alloc]init];
    [self.view addSubview:topView];
    topView.backgroundColor = [UIColor whiteColor];
    topView.frame= CGRectMake(0, 0, iPhoneScreenWidth, 88);
    [topView.backBtn addTarget:self action:@selector(returnindex) forControlEvents:UIControlEventTouchUpInside];
}
///内容
- (void)addContentView {
    ContentScrollView *contentView = [[ContentScrollView alloc]initWithFrame:CGRectMake(0, 88, iPhoneScreenWidth, iPhoneScreenHeight - 88 - 68)];
    [self.view addSubview:contentView];
    _contentView = contentView;
    contentView.picScrollView.delegate = self;
    contentView.backgroundColor = [UIColor whiteColor];
    //设置数据
    contentView.nameLabel.text = @"Card";
    contentView.textLabel.text = @"wefewfewfedfvkfdnvkd\nvfdbvbrbrbrwefewf";
    contentView.lastdayLabel.text = [[@"有效期：" stringByAppendingString:@"123"]stringByAppendingString:@"天"];
    contentView.tipsContentLabel.text = @"fasdfjfnjefjefjbe\njbfhe\nbfg\nhjfghjdfghjkdfghjdfghjfghjfghjfghfghwfjkwenk\nfewgewgwegew\nwefewfew\nfewfwe\nfewffwef\nfreferfef";
    
    //设置contentSize
    [contentView layoutIfNeeded];
    if (contentView.tipsContentLabel.frame.origin.y + contentView.tipsContentLabel.frame.size.height < iPhoneScreenHeight - 88 - 68) {
        contentView.contentSize = CGSizeMake(iPhoneScreenWidth, iPhoneScreenHeight - 88 - 68);
    }else{
        contentView.contentSize = CGSizeMake(iPhoneScreenWidth, contentView.tipsContentLabel.frame.origin.y + contentView.tipsContentLabel.frame.size.height + 10);
    }
}
///底部
- (void)addBottomView {
    BottomView *bottomView = [[BottomView alloc]init];
    [self.view addSubview:bottomView];
    bottomView.backgroundColor = [UIColor whiteColor];
    [bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(iPhoneScreenWidth);
        make.bottom.equalTo(self.view.mas_bottom);
        make.height.mas_equalTo(68);
    }];
    [bottomView.exchangeBtn addTarget:self action:@selector(isExchange) forControlEvents:UIControlEventTouchUpInside];
    //设置数据
    bottomView.balanceLabel.text = [@"余额：" stringByAppendingString:@"9999999"];
    bottomView.priceLabel.text = @"111";
}
///是否兑换
- (void)isExchange {
    PopupView *popupView = [[PopupView alloc]initWithFrame:CGRectMake(0, 0, 414, 900)];
    [self.view addSubview:popupView];
    _popupView = popupView;
    [popupView.cancleBtn addTarget:self action:@selector(remove) forControlEvents:UIControlEventTouchUpInside];
    [popupView.comfirmBtn addTarget:self action:@selector(comfirm) forControlEvents:UIControlEventTouchUpInside];
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleTapBehind:)];
    UITapGestureRecognizer *whitegesture = [[UITapGestureRecognizer alloc]init];
//    [gesture setNumberOfTapsRequired:1];
//    gesture.cancelsTouchesInView = YES;
    [popupView.grayView addGestureRecognizer:gesture];
    [popupView.whiteView addGestureRecognizer:whitegesture];
}
///返回主页面
- (void)returnindex {
    [self.navigationController popViewControllerAnimated:YES];
}
///移除弹窗
- (void)remove {
    [self.popupView removeFromSuperview];
}
///确定
- (void)comfirm {
        
}
///实现UIScrollView的滚动方法
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat offsetX = scrollView.contentOffset.x;
    int page = offsetX / scrollView.frame.size.width;
    self.contentView.pageControl.currentPage = page;
}
///击其他区域关闭弹窗
- (void)handleTapBehind:(UIGestureRecognizer *)sender {
    if (sender.state == UIGestureRecognizerStateEnded) {
        [self.popupView removeFromSuperview];
    }
}
@end
