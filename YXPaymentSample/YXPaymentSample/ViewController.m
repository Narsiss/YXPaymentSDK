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
}

- (IBAction)paymentButtonAction:(id)sender {
    [YXPayment payWithOrderNo:@"aaa" scheme:@"YXPaymentSample" block:^(BOOL openYXPaySuccess, NSError * _Nullable error) {
        if(error) {
            [UIAlertController alertControllerWithTitle:@"发起支付失败" message:[error localizedDescription] preferredStyle:UIAlertControllerStyleAlert];
        }
    }];
}



@end
