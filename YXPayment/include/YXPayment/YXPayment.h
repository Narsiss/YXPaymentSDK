//
//  YXPayment.h
//  YXPayment
//
//  Created by Solo Ye on 06/12/2017.
//  Copyright © 2017 unionpay. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YXPayment : NSObject

typedef NS_ENUM(NSInteger,YXPaymentResponse)
{
    YXPaymentResponseRepeatOrder = -3,    //重复支付订单错误
    YXPaymentResponseQueryFailed = -2,    //查询订单失败
    YXPaymentResponseFailed = -1,         //支付失败
    YXPaymentResponseNone = 0,            //非银信支付URL
    YXPaymentResponseCanceled = 1,        //支付取消
    YXPaymentResponseNullOrlder = 2,      //订单查询失败
    YXPaymentResponseFinished = 3,        //订单完成
};

/*
 * 处理URL
 * 支付完成后,将会返回到应用,使用此方法判断是否为银信支付结果返回
 * 在 AppDelegate.m （application:openURL:) 中使用
 * @param url url
 */
+ (BOOL)handleURL:(NSURL *_Nonnull)url block:(void (^_Nullable)(YXPaymentResponse response,NSString* _Nullable msg))block;


/**
 *  调用支付
 *  @param orderNo 银信支付订单号
 *  @param scheme 支付完成后调用此scheme返回当前APP
 **/
+(void)payWithOrderNo:(NSString* _Nonnull )orderNo scheme:(NSString* _Nonnull)scheme block:(void (^_Nullable)(BOOL openYXPaySuccess,NSError* _Nullable error))block;

@end
