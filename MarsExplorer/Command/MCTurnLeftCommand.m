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
    if (position.orientation == MCORIENTATION_EAST) {
        position.orientation = MCORIENTATION_NORTH;
    } else if (position.orientation == MCORIENTATION_WEST){
        position.orientation = MCORIENTATION_SOUTH;
    } else if (position.orientation == MCORIENTATION_NORTH){
        position.orientation = MCORIENTATION_WEST;
    } else if (position.orientation == MCORIENTATION_SOUTH){
        position.orientation = MCORIENTATION_EAST;
    }
    return position;
}

@end
