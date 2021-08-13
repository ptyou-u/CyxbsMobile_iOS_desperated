//
//  Goods.m
//  商品兑换demo
//
//  Created by p_tyou on 2021/8/5.
//

#import "Goods.h"

@implementation Goods

- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        
    }
    return self;
}
+ (instancetype)goodsWithDict:(NSDictionary *)dict {
    return [[self alloc] initWithDict:dict];
}

@end
