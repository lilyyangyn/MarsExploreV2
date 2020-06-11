//
//  MCPositionDefine.m
//  MarsExplorer
//
//  Created by 宁 on 2020/6/11.
//  Copyright © 2020 宁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MCPositionDefine.h"

@implementation MCPositionDefine

- (instancetype)initWithPoint:(CGPoint)point orientation:(MCOrientation)orientation
{
    self = [super init];
    if (self) {
        _x = point.x;
        _y = point.y;
        _orientation = orientation;
    }
    return self;
}

@end
