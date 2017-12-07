//
//  ViewController.m
//  YXPaymentSample
//
//  Created by Solo Ye on 01/12/2017.
//  Copyright © 2017 unionpay. All rights reserved.
//

#import "ViewController.h"
#import <YXPaymentSDK/YXPayment.h>

@interface ViewController ()<UIAlertViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[YXPayment instance] setupAppKey:@"aa" appSecret:@"aa"];
    YXPaymentModel* model = [[YXPaymentModel alloc] initWithRefId:@"aaa" title:@"aaa" sum:1 extra:nil];
    [[YXPayment instance] payWithModel:model block:^(BOOL openYXPaySuccess, NSError * _Nullable error) {
        if(error) {
            [UIAlertController alertControllerWithTitle:@"发起支付失败" message:[error localizedDescription] preferredStyle:UIAlertControllerStyleAlert];
        }
    }];
}

- (IBAction)paymentButtonAction:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"UnionPay_YXPayment://hello"] options:@{@"source":@"yx.unionpay.sample"} completionHandler:^(BOOL success) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
