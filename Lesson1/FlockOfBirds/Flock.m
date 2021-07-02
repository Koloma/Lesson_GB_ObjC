//
//  Flock.m
//  Lesson1
//
//  Created by user197514 on 7/2/21.
//

#import "Flock.h"
#import "Bird.h"

@implementation Flock

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Flock init");
    }
    return self;
}

-(void) configBirds: (NSArray *)birds{
    [birds retain];
    [birds release];
    _birds = birds;
    
    for (Bird *bird in birds) {
        NSLog(@"Bird with number %@ added to flock", bird.num);
    }
}

-(NSInteger)getBirdsCount{
    return [self.birds count];
}

- (void)dealloc
{
    for (Bird *bird in _birds) {
        [bird release];
    }
    [_birds release];
    NSLog(@"Flock dealloc");
    [super dealloc];
}

@end
