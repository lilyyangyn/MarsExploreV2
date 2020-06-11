//
//  MCCommandExecutor.m
//  MarsExplorer
//
//  Created by 宁 on 2020/6/11.
//  Copyright © 2020 宁. All rights reserved.
//

#import "MCCommandExecutor.h"
#import "MCCommand.h"
#import "MCMap.h"
#import "MCCar.h"
#import "MCPositionDefine.h"

@implementation MCCommandExecutor

+ (void)excuteCommandArray:(NSArray<MCCommand *> *)commandArray withCar:(MCCar *)car onMap:(MCMap *)map {
    for (MCCommand *command in commandArray) {
        MCPositionDefine *newPosition = [command excuteWithCurrentPosition:car.postion];
        if ([map containsPosition:newPosition]) {
            car.postion = newPosition;
        }
    }
}

@end
