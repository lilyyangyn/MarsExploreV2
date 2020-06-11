//
//  ViewController.m
//  MarsExplorer
//
//  Created by 宁 on 2020/6/11.
//  Copyright © 2020 宁. All rights reserved.
//

#import "ViewController.h"
#import "ViewController.h"
#import "MCMap.h"
#import "MCCar.h"
#import "MCPositionDefine.h"
#import "MCMoveFrontCommand.h"
#import "MCTurnLeftCommand.h"
#import "MCCommandExecutor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MCMap *map = [[MCMap alloc] initWithMapSize:CGSizeMake(50, 100)];
    MCCar *car = [[MCCar alloc] init];
    MCPositionDefine *position = [[MCPositionDefine alloc] initWithPoint:CGPointMake(10, 80) orientation:MCORIENTATION_EAST];
    [map landCar:car withPosition:position];
    
    MCMoveFrontCommand *move = [[MCMoveFrontCommand alloc] init];
    move.step = 3;
    MCTurnLeftCommand *turn = [[MCTurnLeftCommand alloc] init];
    
    [MCCommandExecutor excuteCommandArray:@[move, turn] withCar:car onMap:map];
    
    NSLog(@"Position: (%lu, %lu)", (unsigned long)car.postion.x, (unsigned long)car.postion.y);
}


@end
