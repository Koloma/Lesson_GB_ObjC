//
//  Calculator.m
//  Lesson1
//
//  Created by user197514 on 6/20/21.
//

#import "Calculator.h"


@implementation Calculator

+(CGFloat) summ:(CGFloat)a with:(CGFloat)b{
    return a + b;
}

+(CGFloat) sub:(CGFloat)a with:(CGFloat)b{
    return a - b;
}

+(CGFloat) mult:(CGFloat)a with:(CGFloat)b{
    return a * b;
}

+(CGFloat) div:(CGFloat)a with:(CGFloat)b{
    return a/b;
}

+(CGFloat) calculate:(ArifmeticOperations)method :(CGFloat)a :(CGFloat)b{
    switch (method) {
        case ArifmeticOperationsSumm:
            return [Calculator summ: a with: b];
            break;
        case ArifmeticOperationsSub:
            return [Calculator sub: a with: b];
            break;
        case ArifmeticOperationsMult:
            return [Calculator mult: a with: b];
            break;
        case ArifmeticOperationsDiv:
            return [Calculator div: a with: b];
            break;
        default:
            //Throw error
            return 0.0;
            break;
    }
}


@end

