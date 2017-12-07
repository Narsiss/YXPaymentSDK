//
//  YXPayment.h
//  YXPayment
//
//  Created by Solo Ye on 06/12/2017.
//  Copyright © 2017 unionpay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YXPaymentModel.h"

@interface YXPayment : NSObject

typedef void (^YXPaymetnBlock)(YXPaymentModel * _Nullable model, NSError*  _Nullable error);

//日志打印开关
@property (nonatomic,assign) BOOL showDebugLog;

+(NSString* _Nonnull)version;

/**
 *  获取支付组件单例
 **/
+(YXPayment* _Nonnull)instance;

/*
 * 处理URL
 * 支付完成后,将会返回到应用,使用此方法判断是否为银信支付结果返回
 * 在 AppDelegate.m （application:openURL:) 中使用
 * @param url url
 */
+ (BOOL)handleURL:(NSURL *_Nonnull)url;

/**
 *  获取支付组件单例
 *  @param appKey  应用AppKey
 *  @param appSecret  应用AppSecret
 **/
-(void)setupAppKey:(NSString* _Nonnull)appKey appSecret:(NSString* _Nonnull)appSecret;

/**
 *  添加响应block,支付发起成功/支付发起失败/支付成功/支付失败/订单取消时,将会调用block
 **/
-(void)addBlock:(YXPaymetnBlock _Nonnull)block;

/**
 *  移除响应block
 **/
-(void)deleteBlock:(YXPaymetnBlock _Nonnull)block;

/**
 *  调用支付
 *  @param model 支付信息
 **/
-(void)payWithModel:(YXPaymentModel* _Nonnull)model block:(void (^_Nullable)(BOOL openYXPaySuccess,NSError* _Nullable error))block;

@end
