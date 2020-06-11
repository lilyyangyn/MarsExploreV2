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
    if (position.orientation == MCORIENTATION_EAST) {
        position.x += self.step;
    } else if (position.orientation == MCORIENTATION_WEST){
        position.x -= self.step;
    } else if (position.orientation == MCORIENTATION_NORTH){
        position.y += self.step;
    } else if (position.orientation == MCORIENTATION_SOUTH){
        position.x -= self.step;
    }
    return position;
}

@end
