//
//  Bird.m
//  Lesson1
//
//  Created by user197514 on 7/2/21.
//

#import "Bird.h"

@implementation Bird

-(instancetype)initWithNumber: (NSNumber *)num
{
    self = [super init];
    if (self) {
        [num retain];
        [num release];
        _num = num;
        NSLog(@"Bird with number %@ create", _num);
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"Bird with number %@ dealloc", _num);
    [_num release];
    [super dealloc];
}
@end
