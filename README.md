# YXPaymentSDK
银信支付SDK

SDK安装:

	1. 使用CocoaPods集成

    	pod 'YXPaymentSDK', '~> 0.1.4'

    2. 复制集成

        a. 拷贝YXPayment下文件至项目中
        b. 添加 Security.framework


使用说明:
	
	1. info.plist -> URL types -> Add Item -> {URL Scehemes {Item 0: [SCHEME]},URL identifier: [SCHEME]}

	2. info.plist -> LSApplicationQueriesSchemes -> Add Item -> YXPayment

	3. 调用银信API 生成订单 , 获取OrderNo

	4. 调用 [YXPayment payWithOrderNo: scheme: block:] 发起支付

	5. 支付结束后,在AppDelegate调用 [YXPayment handleURL: delegate:] 获取支付响应结果