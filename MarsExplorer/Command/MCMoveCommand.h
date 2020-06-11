//
//  MCMoveCommand.h
//  MarsExplorer
//
//  Created by 宁 on 2020/6/11.
//  Copyright © 2020 宁. All rights reserved.
//

#import "MCCommand.h"

typedef NS_ENUM(NSUInteger, MCMoveDirection) {
    MCMOVEDIRECTION_FRONT,
    MCMOVEDIRECTION_BACK,
};

NS_ASSUME_NONNULL_BEGIN

@interface MCMoveCommand : MCCommand

@property (nonatomic, assign) MCMoveDirection direction;

@property (nonatomic, assign) NSUInteger step;

@end

NS_ASSUME_NONNULL_END
