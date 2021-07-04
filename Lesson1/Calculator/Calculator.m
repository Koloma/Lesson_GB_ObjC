//
//  Calculator.m
//  Lesson1
//
//  Created by user197514 on 6/20/21.
//

#import "Calculator.h"


@implementation Calculator

CalcBlock sum = ^(CGFloat a, CGFloat b){
    return a + b;
};

CalcBlock sub = ^(CGFloat a, CGFloat b){
    return a - b;
};

CalcBlock mult = ^(CGFloat a, CGFloat b){
    return a * b;
};

CalcBlock divide = ^(CGFloat a, CGFloat b){
    if (b == 0)
        return 0.0;
    else
        return (a/b);
};

+(CGFloat) beginOperation:(ArifmeticOperations)operation firstNumber:(CGFloat)a secondNumber:(CGFloat)b{
    switch (operation) {
        case ArifmeticOperationsSumm:
            return sum(a,b);
            break;
        case ArifmeticOperationsSub:
            return sub(a,b);
            break;
        case ArifmeticOperationsMult:
            return mult(a,b);
            break;
        case ArifmeticOperationsDiv:
            return divide(a,b);
            break;
        default:
            //Throw error
            return 0.0;
            break;
    }
}


@end

