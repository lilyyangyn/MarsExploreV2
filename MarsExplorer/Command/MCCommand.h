//
//  Command.h
//  MarsExplorer
//
//  Created by 宁 on 2020/6/11.
//  Copyright © 2020 宁. All rights reserved.
//

@class MCPosition;

NS_ASSUME_NONNULL_BEGIN

@interface MCCommand : NSObject

- (MCPosition *)excuteWithCurrentPosition:(MCPosition *)position;

@end

NS_ASSUME_NONNULL_END
