//
//  HLNextController.m
//  内存管理-NSTimer
//
//  Created by haili on 2020/6/9.
//  Copyright © 2020 haili. All rights reserved.
//

#import "HLNextController.h"
#import "HLProxy.h"

@interface HLNextController ()

@property (nonatomic, strong) NSTimer *myTimer;
@end

@implementation HLNextController

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    // 解决循环引用
    // 方式1
//    __weak typeof(self) weakSelf = self;
//    self.myTimer = [NSTimer scheduledTimerWithTimeInterval:.5 repeats:YES block:^(NSTimer * _Nonnull timer) {
//        [weakSelf timerEvent];
//    }];
    
    // 方式2 打破原有的循环引用
    self.myTimer = [NSTimer scheduledTimerWithTimeInterval:.5 target:[HLProxy proxyWithTarget:self] selector:@selector(timerEvent) userInfo:nil repeats:YES];
}

- (void)timerEvent {
    NSLog(@"时间计时");
}

- (void)dealloc {
    NSLog(@"%s", __func__);
    [self.myTimer invalidate];
}
@end
