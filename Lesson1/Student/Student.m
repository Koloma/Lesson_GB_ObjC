//
//  Student.m
//  Lesson1
//
//  Created by user197514 on 6/26/21.
//

#import "Student.h"

@interface Student()
    @property (nonatomic) NSInteger inerAge;
@end

@implementation Student

- (instancetype)initWithParams:(NSInteger)age name:(NSString *)name surname:(NSString *)surname 
{
    self = [super init];
    if (self) {
        self.inerAge = age;
        self.name = name;
        self.surname = surname;
    }
    return self;
}

- (NSInteger) age{
    return self.inerAge;
}

- (void) increaseAgeOneYear{
    self.inerAge++;
}

- (NSString *) fullName{
    return [NSString stringWithFormat:@"%@ %@", self.name, self.surname];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Student:%@ %@, age:%ld", self.name, self.surname, self.age];
}


+ (NSString *) randomNameWithLength: (int) len {
    NSString *letters = @"abcdefghijklmnopqrstuvwxyz";
    
    NSMutableString *randomString = [NSMutableString stringWithCapacity: len];

    for (int i=0; i<len; i++) {
         [randomString appendFormat: @"%C", [letters characterAtIndex: arc4random_uniform([letters length])]];
    }

    return randomString.localizedCapitalizedString;
}

@end
