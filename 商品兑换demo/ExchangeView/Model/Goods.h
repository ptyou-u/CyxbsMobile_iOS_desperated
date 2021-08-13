//
//  Goods.h
//  商品兑换demo
//
//  Created by p_tyou on 2021/8/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Goods : NSObject

@property (nonatomic, copy) NSString *pic;  ///商品图片
@property (nonatomic, copy) NSString *name; ///商品名字
@property (nonatomic, copy) NSString *text; ///商品描述
@property (nonatomic, copy) NSString *lastday;  ///有效期

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)goodsWithDict:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
