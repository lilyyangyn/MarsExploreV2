//
//  MCTurnCommand.h
//  MarsExplorer
//
//  Created by 宁 on 2020/6/11.
//  Copyright © 2020 宁. All rights reserved.
//

#import "MCCommand.h"

typedef NS_ENUM(NSUInteger, MCTurnDirection) {
    MCTURNDIRECTION_LEFT,
    MCTURNDIRECTION_RIGHT,
};

NS_ASSUME_NONNULL_BEGIN

@interface MCTurnCommand : MCCommand

@property (nonatomic, assign) MCTurnDirection direction;

@end

NS_ASSUME_NONNULL_END
