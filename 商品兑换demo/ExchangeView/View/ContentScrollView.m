//
//  ContentScrollView.m
//  商品兑换demo
//
//  Created by p_tyou on 2021/8/5.
//

#import "ContentScrollView.h"
#import <Masonry/Masonry.h>

#define picScrollViewWidth 360 * [UIScreen mainScreen].bounds.size.width / 390

@implementation ContentScrollView

///重写initWithFrame
- (instancetype)initWithFrame:(CGRect)frame {
    if ([super initWithFrame:frame]) {
        [self addPicView];
        [self addnameLabel];
        [self addtextLabel];
        [self addlastdayLabel];
        [self addtipsLabel];
    }
    return  self;
}
///商品图片滚动
- (void)addPicView {
    UIScrollView *picScrollView = [[UIScrollView alloc]init];
    [self addSubview:picScrollView];
    _picScrollView = picScrollView;
    [picScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.top.equalTo(self).offset(16);
        make.width.mas_equalTo(picScrollViewWidth);
        make.height.mas_equalTo(178);
    }];
    picScrollView.layer.cornerRadius = 10;
    [picScrollView setContentSize:CGSizeMake(picScrollViewWidth * 3, 178)];
    picScrollView.pagingEnabled = YES;
    [picScrollView setShowsHorizontalScrollIndicator:NO];
    
    NSArray *color1 = @[[UIColor blueColor], [UIColor yellowColor], [UIColor redColor]];
    CGFloat imgW = picScrollViewWidth;
    CGFloat imgH = 300;
    CGFloat imgY = 0;
    for (int i = 0; i < 3; i++) {
        UIImageView *imgeView =[[UIImageView alloc] init];
        [self.picScrollView addSubview:imgeView];
        CGFloat imgX = i*imgW;
        imgeView.frame = CGRectMake(imgX, imgY, imgW, imgH);
        
        imgeView.backgroundColor = color1[i];

    }
    //添加分页控制器
    [self addPageController];
}
///分页控制器
- (void)addPageController {
    UIPageControl *pageControl = [[UIPageControl alloc]init];
    [self addSubview:pageControl];
    _pageControl = pageControl;
    [pageControl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.bottom.equalTo(self.picScrollView.mas_bottom);
            make.width.mas_equalTo(125);
            make.height.mas_equalTo(30);
    }];
    pageControl.pageIndicatorTintColor =[UIColor grayColor];
    pageControl.currentPageIndicatorTintColor = [UIColor whiteColor];
    pageControl.numberOfPages = 3;
    pageControl.currentPage = 0;
    
}
///商品名字
- (void)addnameLabel {
    UILabel *nameLabel = [[UILabel alloc]init];
    [self addSubview:nameLabel];
    _nameLabel = nameLabel;
    [nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.picScrollView);
        make.top.equalTo(self.picScrollView.mas_bottomMargin).mas_offset(28);
        make.width.mas_equalTo(300);
    }];
    nameLabel.textColor = [UIColor colorWithRed:21.0/255 green:49.0/255 blue:91.0/255 alpha:1.0];
    nameLabel.font = [UIFont systemFontOfSize:20];
}
///商品说明
- (void)addtextLabel {
    UILabel *textLabel = [[UILabel alloc]init];
    [self addSubview:textLabel];
    _textLabel = textLabel;
    [textLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.nameLabel);
            make.top.equalTo(self.nameLabel.mas_bottom).mas_offset(16);
            make.width.mas_equalTo(344);
    }];
    textLabel.numberOfLines = 0;
    textLabel.textColor = [UIColor colorWithRed:21.0/255 green:49.0/255 blue:91.0/255 alpha:0.8];
    textLabel.font = [UIFont systemFontOfSize:16];
}
///有效期
- (void)addlastdayLabel {
    UILabel *lastdayLabel = [[UILabel alloc]init];
    [self addSubview:lastdayLabel];
    _lastdayLabel = lastdayLabel;
    [lastdayLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.textLabel);
            make.top.equalTo(self.textLabel.mas_bottom).offset(8);
            make.width.mas_equalTo(300);
    }];
    lastdayLabel.textColor = [UIColor colorWithRed:21.0/255 green:49.0/255 blue:91.0/255 alpha:0.8];
    lastdayLabel.font = [UIFont systemFontOfSize:13];
}
///说明
- (void)addtipsLabel {
    UILabel *tipsLabel = [[UILabel alloc]init];
    [self addSubview:tipsLabel];
    [tipsLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.textLabel);
            make.top.equalTo(self.lastdayLabel.mas_bottom).offset(36);
            make.width.mas_equalTo(100);
    }];
    tipsLabel.textColor = [UIColor colorWithRed:21.0/255 green:49.0/255 blue:91.0/255 alpha:0.8];
    tipsLabel.font = [UIFont systemFontOfSize:14];
    tipsLabel.text = @"权益说明:";
    UILabel *tipscontentLabel = [[UILabel alloc]init];
    _tipsContentLabel = tipscontentLabel;
    [self addSubview:tipscontentLabel];
    [tipscontentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(tipsLabel);
            make.top.equalTo(tipsLabel.mas_bottom).offset(12);
//            make.right.equalTo(self.mas_right).offset(-16);
            make.width.mas_equalTo(300);
    }];
    tipscontentLabel.numberOfLines = 0;
    tipscontentLabel.textColor = [UIColor colorWithRed:21.0/255 green:49.0/255 blue:91.0/255 alpha:0.4];
}

@end
