//
//  MCTurnRightCommand.m
//  MarsExplorer
//
//  Created by 宁 on 2020/6/11.
//  Copyright © 2020 宁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MCTurnRightCommand.h"
#import "MCPositionDefine.h"

@implementation MCTurnRightCommand

- (MCPositionDefine *)excuteWithCurrentPosition:(MCPositionDefine *)position
{
    MCPositionDefine *newPosition = [position copy];
    if (newPosition.orientation == MCORIENTATION_EAST) {
        newPosition.orientation = MCORIENTATION_SOUTH;
    } else if (position.orientation == MCORIENTATION_WEST){
        newPosition.orientation = MCORIENTATION_NORTH;
    } else if (position.orientation == MCORIENTATION_NORTH){
        newPosition.orientation = MCORIENTATION_EAST;
    } else if (position.orientation == MCORIENTATION_SOUTH){
        newPosition.orientation = MCORIENTATION_SOUTH;
    }
    return newPosition;
}

@end
