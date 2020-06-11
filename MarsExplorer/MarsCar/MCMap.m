//
//  MCMap.m
//  MarsExplorer
//
//  Created by 宁 on 2020/6/11.
//  Copyright © 2020 宁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MCMap.h"
#import "MCCar.h"
#import "MCPositionDefine.h"

@implementation MCMap

-(instancetype)initWithMapSize:(CGSize)size
{
    self = [super init];
    if (self) {
        _width = size.width;
        _length = size.height;
    }
    return self;
}
-(void)landCar:(MCCar*)car withPosition:(MCPositionDefine*) position
{
    car.postion = position;
    self.marsCar = car;
}

-(BOOL)containsPosition:(MCPositionDefine*) position
{
    if (position.x < 0 || position.x > self.width) {
        return FALSE;
    }
    if (position.y < 0 || position.y > self.length) {
        return FALSE;
    }
    return TRUE;
}

@end
