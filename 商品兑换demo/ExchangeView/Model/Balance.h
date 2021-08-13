//
//  Balance.h
//  商品兑换demo
//
//  Created by p_tyou on 2021/8/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Balance : NSObject

@property (nonatomic, copy) NSString *icon;///邮豆图标
@property (nonatomic, copy) NSString *balance;///余额

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)balanceWithDict:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
