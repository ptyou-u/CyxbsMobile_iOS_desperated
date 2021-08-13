//
//  ViewController.m
//  商品兑换demo
//
//  Created by p_tyou on 2021/8/5.
//

#import "ViewController.h"
#import "ExchangeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 50)];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor blueColor];
    [btn addTarget:self action:@selector(jump) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)jump {
    ExchangeViewController *ExchangeVC = [[ExchangeViewController alloc]init];
    [self.navigationController pushViewController:ExchangeVC animated:YES];
}


@end
