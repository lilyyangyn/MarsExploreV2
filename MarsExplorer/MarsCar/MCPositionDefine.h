//
//  MCPosition.h
//  MarsExplorer
//
//  Created by 宁 on 2020/6/11.
//  Copyright © 2020 宁. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, MCOrientation) {
    MCORIENTATION_NORTH,
    MCORIENTATION_SOUTH,
    MCORIENTATION_WEST,
    MCORIENTATION_EAST
};

NS_ASSUME_NONNULL_BEGIN

@interface MCPositionDefine : NSObject

@property (nonatomic, assign) NSUInteger x;

@property (nonatomic, assign) NSUInteger y;

@property (nonatomic, assign) MCOrientation orientation;

- (instancetype)initWithPoint:(CGPoint)point orientation:(MCOrientation)orientation;

@end

NS_ASSUME_NONNULL_END
