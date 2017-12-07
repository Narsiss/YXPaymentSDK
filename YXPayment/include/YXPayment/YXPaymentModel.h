//
//  YXPaymentModel.h
//  YXPayment
//
//  Created by Solo Ye on 06/12/2017.
//  Copyright © 2017 unionpay. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YXPaymentModel : NSObject

typedef NS_ENUM(NSInteger,YXPaymentStatus)
{
    YXPaymentStatusCanceled = 0,        //订单取消
    YXPaymentStatusCreated,             //订单发起成功
    YXPaymentStatusCreatFailed,         //订单发起失败
    YXPaymentStatusWaitingPay,          //等待支付
    YXPaymentStatusFinished,            //订单完成
};

-(id)initWithRefId:(NSString*)refId
             title:(NSString*)title
               sum:(NSInteger)sum
             extra:(NSDictionary*)extra;

//参考号(商户系统中的订单ID)
@property (nonatomic,copy) NSString* refId;

//订单号
@property (nonatomic,copy) NSString* orderId;

//流水号
@property (nonatomic,copy) NSString* transactionId;

//付款标题
@property (nonatomic,copy) NSString* title;

//商户名称
@property (nonatomic,copy) NSString* mchName;

//商户ID
@property (nonatomic,copy) NSString* mchId;

//付款金额(单位:分)
@property (nonatomic,assign) NSInteger sum;

//订单状态
@property (nonatomic,assign) YXPaymentStatus status;

//附加信息
@property (nonatomic,copy) NSDictionary* extra;

@end
