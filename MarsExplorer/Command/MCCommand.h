//
//  Command.h
//  MarsExplorer
//
//  Created by 宁 on 2020/6/11.
//  Copyright © 2020 宁. All rights reserved.
//

@class MCPositionDefine;

NS_ASSUME_NONNULL_BEGIN

@interface MCCommand : NSObject

- (MCPositionDefine *)excuteWithCurrentPosition:(MCPositionDefine *)position;

@end

NS_ASSUME_NONNULL_END
