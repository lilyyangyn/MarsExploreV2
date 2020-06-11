//
//  MCMoveBackCommand.h
//  MarsExplorer
//
//  Created by 宁 on 2020/6/11.
//  Copyright © 2020 宁. All rights reserved.
//

#import "MCCommand.h"

NS_ASSUME_NONNULL_BEGIN

@interface MCMoveBackCommand : MCCommand

@property (nonatomic, assign) NSUInteger step;

@end

NS_ASSUME_NONNULL_END
