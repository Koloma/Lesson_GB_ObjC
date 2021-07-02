//
//  Calculator.m
//  Lesson1
//
//  Created by user197514 on 6/20/21.
//

#import "Calculator.h"


@implementation Calculator

-(CGFloat) summ:(CGFloat)a with:(CGFloat)b{
    return a + b;
}

-(CGFloat) sub:(CGFloat)a with:(CGFloat)b{
    return a - b;
}

-(CGFloat) mult:(CGFloat)a with:(CGFloat)b{
    return a * b;
}

-(CGFloat) div:(CGFloat)a with:(CGFloat)b{
    return a/b;
}

-(CGFloat) calculate:(ArifmeticOperations)method :(CGFloat)a :(CGFloat)b{
    switch (method) {
        case ArifmeticOperationsSumm:
            return [self summ: a with: b];
            break;
        case ArifmeticOperationsSub:
            return [self sub: a with: b];
            break;
        case ArifmeticOperationsMult:
            return [self mult: a with: b];
            break;
        case ArifmeticOperationsDiv:
            return [self div: a with: b];
            break;
        default:
            //Throw error
            return 0.0;
            break;
    }
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Calculator init");
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"Calculator dealloc");
    [super dealloc];
}

@end

