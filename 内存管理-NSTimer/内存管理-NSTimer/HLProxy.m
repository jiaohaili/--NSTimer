//
//  HLProxy.m
//  内存管理-NSTimer
//
//  Created by haili on 2020/6/9.
//  Copyright © 2020 haili. All rights reserved.
//

#import "HLProxy.h"

@implementation HLProxy

+ (instancetype)proxyWithTarget:(id)target {
    HLProxy *proxy = [[HLProxy alloc] init];
    proxy.target = target;
    return proxy;
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    return self.target;
}

@end
