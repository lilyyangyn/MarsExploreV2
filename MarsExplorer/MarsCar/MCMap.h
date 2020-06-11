//
//  MCMap.h
//  MarsExplorer
//
//  Created by 宁 on 2020/6/11.
//  Copyright © 2020 宁. All rights reserved.
//

@class MCCar, MCPosition;

NS_ASSUME_NONNULL_BEGIN

@interface MCMap : NSObject

@property (nonatomic, assign, readonly) NSUInteger width;
@property (nonatomic, assign, readonly) NSUInteger length;

@property (nonatomic, strong, readonly) MCCar *marsCar;

-(instancetype)initWithMapSize:(CGSize)size;
-(void)landCar:(MCCar*)car withPosition:(MCPostion*) position;

@end
NS_ASSUME_NONNULL_END
