//
//  Bird.h
//  Lesson1
//
//  Created by user197514 on 7/2/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject

@property (nonatomic, strong, readonly) NSNumber *num;

-(instancetype)initWithNumber: (NSNumber *)num;

@end

NS_ASSUME_NONNULL_END
