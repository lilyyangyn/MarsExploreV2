//
//  MCCommandExecutor.h
//  MarsExplorer
//
//  Created by 宁 on 2020/6/11.
//  Copyright © 2020 宁. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MCCommand, MCCar, MCMap;

NS_ASSUME_NONNULL_BEGIN

@interface MCCommandExecutor : NSObject
+ (void)excuteCommandArray:(NSArray<MCCommand *> *)commandArray withCar:(MCCar *)car onMap:(MCMap *)map;
@end

NS_ASSUME_NONNULL_END
