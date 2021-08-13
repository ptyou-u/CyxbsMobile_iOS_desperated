//
//  Balance.m
//  商品兑换demo
//
//  Created by p_tyou on 2021/8/5.
//

#import "Balance.h"

@implementation Balance

- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        
    }
    return self;
}
+ (instancetype)balanceWithDict:(NSDictionary *)dict {
    return [[self alloc] initWithDict:dict];
}

@end
