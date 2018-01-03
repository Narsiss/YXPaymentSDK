# YXPaymentSDK
银信支付SDK

SDK安装:

    pod 'YXPaymentSDK', '~> 0.1.0'


使用说明:
	
	1. info.plist -> URL types -> Add Item -> {URL Scehemes {Item 0: [SCHEME]},URL identifier: [SCHEME]}

	2. info.plist -> LSApplicationQueriesSchemes -> Add Item -> YXPayment

	3. 调用银信开放平台API 生成订单 , 获取OrderId

	4. 调用 [YXPayment payWithOrderNo: scheme: block:] 发起支付

	5. 支付结束后,在AppDelegate调用 [YXPayment handleURL: block:] 获取支付响应结果