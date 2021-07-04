//
//  Calculator.h
//  Lesson1
//
//  Created by user197514 on 6/20/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, ArifmeticOperations) {
    ArifmeticOperationsSumm,
    ArifmeticOperationsSub,
    ArifmeticOperationsMult,
    ArifmeticOperationsDiv
};

typedef CGFloat (^CalcBlock)(CGFloat,CGFloat);

@interface Calculator : NSObject

+(CGFloat) beginOperation:(ArifmeticOperations)operation firstNumber:(CGFloat)a secondNumber:(CGFloat)b;

@end

NS_ASSUME_NONNULL_END
