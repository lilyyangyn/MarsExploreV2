//
//  MCMoveCommand.m
//  MarsExplorer
//
//  Created by 宁 on 2020/6/11.
//  Copyright © 2020 宁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MCMoveFrontCommand.h"
#import "MCPositionDefine.h"

@implementation MCMoveFrontCommand

- (MCPositionDefine *)excuteWithCurrentPosition:(MCPositionDefine *)position
{
    MCPositionDefine *newPosition = [position copy];
    if (newPosition.orientation == MCORIENTATION_EAST) {
        newPosition.x += self.step;
    } else if (newPosition.orientation == MCORIENTATION_WEST){
        newPosition.x -= self.step;
    } else if (newPosition.orientation == MCORIENTATION_NORTH){
        newPosition.y += self.step;
    } else if (position.orientation == MCORIENTATION_SOUTH){
        newPosition.x -= self.step;
    }
    return newPosition;
}

@end
