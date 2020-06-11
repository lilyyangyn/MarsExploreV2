//
//  MCTurnLeftCommand.m
//  MarsExplorer
//
//  Created by 宁 on 2020/6/11.
//  Copyright © 2020 宁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MCTurnLeftCommand.h"
#import "MCPositionDefine.h"

@implementation MCTurnLeftCommand

- (MCPositionDefine *)excuteWithCurrentPosition:(MCPositionDefine *)position
{
    MCPositionDefine *newPosition = [[MCPositionDefine alloc] initWithPoint:CGPointMake(position.x, position.y) orientation:position.orientation];
    if (newPosition.orientation == MCORIENTATION_EAST) {
        newPosition.orientation = MCORIENTATION_NORTH;
    } else if (newPosition.orientation == MCORIENTATION_WEST){
        newPosition.orientation = MCORIENTATION_SOUTH;
    } else if (position.orientation == MCORIENTATION_NORTH){
        newPosition.orientation = MCORIENTATION_WEST;
    } else if (position.orientation == MCORIENTATION_SOUTH){
        newPosition.orientation = MCORIENTATION_EAST;
    }
    return newPosition;
}

@end
