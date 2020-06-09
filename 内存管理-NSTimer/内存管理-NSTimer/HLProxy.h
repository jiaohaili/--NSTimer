//
//  HLProxy.h
//  内存管理-NSTimer
//
//  Created by haili on 2020/6/9.
//  Copyright © 2020 haili. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HLProxy : NSObject

@property (nonatomic, weak) id target;

+ (instancetype)proxyWithTarget:(id)target;

@end

NS_ASSUME_NONNULL_END
