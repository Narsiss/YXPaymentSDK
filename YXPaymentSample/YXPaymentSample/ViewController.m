//
//  ViewController.m
//  YXPaymentSample
//
//  Created by Solo Ye on 01/12/2017.
//  Copyright © 2017 unionpay. All rights reserved.
//

#import "ViewController.h"
#import <YXPaymentSDK/YXPayment.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *orderNoTextField;

@property (weak, nonatomic) IBOutlet UILabel *orderNoDescLabel;

@property (weak, nonatomic) IBOutlet UIButton *payButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.payButton setTag:0];
}

- (IBAction)switchOrderNoAction:(id)sender {
    [self.orderNoTextField setText:@"ORD20180103293222223"];
}

- (IBAction)paymentButtonAction:(id)sender {
    if(self.orderNoTextField.text.length == 0) {
        NSLog(@"请输入订单号");
        return;
    }
    [YXPayment payWithOrderNo:self.orderNoTextField.text scheme:@"YXPaymentSample" block:^(BOOL openYXPaySuccess, NSError * _Nullable error) {
        if(error) {
            [UIAlertController alertControllerWithTitle:@"发起支付失败" message:[error localizedDescription] preferredStyle:UIAlertControllerStyleAlert];
        }
    }];
}



@end
