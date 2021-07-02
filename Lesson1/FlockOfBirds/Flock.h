//
//  Flock.h
//  Lesson1
//
//  Created by user197514 on 7/2/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Flock : NSObject

@property (nonatomic, readonly) NSInteger birdsCount;
@property (nonatomic, strong) NSArray *birds;

-(void) configBirds: (NSArray *)birds;

@end

NS_ASSUME_NONNULL_END
