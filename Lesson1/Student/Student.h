//
//  Student.h
//  Lesson1
//
//  Created by user197514 on 6/26/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic, readonly) NSInteger age;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * surname;
@property (nonatomic, readonly) NSString * fullName;

- (instancetype)initWithParams:(NSInteger)age name:(NSString *)name surname:(NSString *)surname;
- (void) increaseAgeOneYear;

+ (NSString *) randomNameWithLength: (int) len;

@end

NS_ASSUME_NONNULL_END
