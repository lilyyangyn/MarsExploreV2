//
//  MCMap.h
//  MarsExplorer
//
//  Created by 宁 on 2020/6/11.
//  Copyright © 2020 宁. All rights reserved.
//

@class MCCar, MCPositionDefine;

NS_ASSUME_NONNULL_BEGIN

@interface MCMap : NSObject

@property (nonatomic, assign, readonly) NSUInteger width;
@property (nonatomic, assign, readonly) NSUInteger length;

@property (nonatomic, strong) MCCar *marsCar;

-(instancetype)initWithMapSize:(CGSize)size;
-(void)landCar:(MCCar*)car withPosition:(MCPositionDefine*) position;

@end
NS_ASSUME_NONNULL_END
