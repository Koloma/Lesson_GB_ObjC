//
//  main.m
//  Lesson1
//
//  Created by user197514 on 6/17/21.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
#import "Flock.h"
#import "Bird.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *calc = [Calculator new];
        
        [calc autorelease];
        
        NSInteger birdCount = 10;
        NSMutableArray *birds = [NSMutableArray new];
        for (int i=1; i<=birdCount; i++) {
            [birds addObject:[[Bird alloc] initWithNumber: [NSNumber numberWithInteger:i]]];
        }
       
        Flock *flock = [Flock new];
        [flock autorelease];
        [flock configBirds:[birds copy]];
        [birds release];
        
    }
    
    return 0;
}
